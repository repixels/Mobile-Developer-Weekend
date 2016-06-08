
//
//  WebserviceManger.swift
//  Mobile Developer Weekend
//
//  Created by RE Pixels on 6/3/16.
//  Copyright © 2016 ITI. All rights reserved.
//

import Foundation
import CoreData
import Alamofire
import AlamofireObjectMapper
import ObjectMapper
import AlamofireImage
import AlamofireNetworkActivityIndicator

class WebserviceManager
{
    static let appdelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    static let managedContext = appdelegate.managedObjectContext
    
    static func getUserInfo(serviceURL: String , result: (user:User?, code:String?)->Void)
    {
        Alamofire.request(.GET, serviceURL)
            .responseJSON { response in
                switch response.result
                {
                case .Success(let _data):
                    
                    let connectionStatus = _data["status"] as! String
                    
                    switch connectionStatus
                    {
                    case "view.error":
                        result(user: nil,code: _data["result"] as? String)
                        break;
                    case "view.success":
                        if let returnedUser = _data["result"] as? NSDictionary
                        {
                            
                            var managedUser = NSEntityDescription.insertNewObjectForEntityForName("User", inManagedObjectContext: managedContext) as! User
                            
                            managedUser = Mapper<User>().map(returnedUser)!
                            result(user: managedUser, code: "view.sucess")
                        }
                        else
                        {
                            result(user: nil, code: "error")
                        }
                        break;
                    default:
                        result(user: nil, code: "error")
                        break;
                    }
                    break;
                case .Failure(let _error):
                    result(user: nil,code: _error.code.toString)
                    break;
                }
        }
        
    }
    
    static func getImageFromURL(imageURL : String , result: (image: UIImage?)->Void)
    {
        
        Alamofire.request(.GET, imageURL)
            .responseImage { response in
                if let image = response.result.value
                {
                    print("Entered Image")
                    result(image: image)
                }
                else
                {
                    print("Entered NIL")
                    result(image: nil)
                }
        }
    }
    
    static func getUserSessions(serviceURL: String , result: (agendas:[Agenda]?, code:String?)->Void)
    {
        Alamofire.request(.GET, serviceURL)
            .responseJSON { response in
                switch response.result
                {
                case .Success(let _data):
                    let connectionStatus = _data["status"] as! String
                    
                    switch connectionStatus
                    {
                    case "view.error":
                        
                        result(agendas: nil,code: connectionStatus)
                        break;
                    case "view.success":
                        if let returnedAgendas = _data["result"] as? NSDictionary
                        {
                            let _managedAgendas  = Mapper<Agenda>().mapArray(returnedAgendas.valueForKey("agendas"))!
                            result(agendas: _managedAgendas, code: connectionStatus)
                        }
                        break;
                    default:
                        print(_data["result"])
                        break;
                    }
                    break;
                    
                case .Failure(let _error):
                    print(_error)
                    break;
                }
        }
    }
    
    static func getExhibitors(serviceURL : String , result: (exhibitors:[Exhibitor]?, code:String?)->Void)
    {
        Alamofire.request(.GET ,serviceURL)
            .responseJSON{ response in
                switch response.result
                {
                case .Success(let _data):
                    let connectionStatus = _data["status"] as! String
                    
                    switch connectionStatus
                    {
                    case "view.error":
                        result(exhibitors: nil,code: "")
                        break;
                    case "view.success":
                        
                        if let returnedExhibitors = _data["result"]
                        {
                            let _managedExhibitors  = Mapper<Exhibitor>().mapArray(returnedExhibitors)!
                            result(exhibitors: _managedExhibitors,code: connectionStatus)
                            
                        }
                        break;
                    default:
                        result(exhibitors: nil,code: connectionStatus)
                        break;
                    }
                    break;
                case .Failure(let _error):
                    result(exhibitors: nil , code: _error.code.toString)
                    break;
                }
                
        }
    }
}