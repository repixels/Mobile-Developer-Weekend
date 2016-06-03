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
import AlamofireImage
import AlamofireNetworkActivityIndicator

class WebserviceManager
{
    static let appdelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    static let managedContext = appdelegate.managedObjectContext
    
    static func getUserInfo(serviceURL: String)
    {
        Alamofire.request(.GET, serviceURL)
            .responseJSON { response in
                switch response.result
                {
                    
                    case .Success(let _data):
                        if let returnedUser = _data["result"] as? NSDictionary
                        {
                            let userID = returnedUser["id"]!
                            
                            let firstName = returnedUser["firstName"]!
                            let middleName = returnedUser["middleName"]!
                            let lastName = returnedUser["lastName"]!
                            
                            let companyName = returnedUser["companyName"]!
                            let companyTitle = returnedUser["title"]!
                            
                            let email = returnedUser["email"]!
                            
                            let userQRCode = returnedUser["code"]!
                            
                            print(userID)
                            print(firstName)
                            print(middleName)
                            print(lastName)
                            print(companyName)
                            print(companyTitle)
                            print(email)
                            print(userQRCode)
                            
                            
                        }
                        break;
                    default:
                        print("None")
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
    
    func getUserSessions(serviceURL: String)
    {
        
    }
    
    
}