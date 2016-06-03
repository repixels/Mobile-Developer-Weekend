//
//  NetWork_Manager.swift
//  Mobile Developer Weekend
//
//  Created by Nrmeen Tomoum on 5/29/16.
//  Copyright © 2016 ITI. All rights reserved.
//

import UIKit

class NetWork_Manager: NSObject {
    var myDelegat : NetWork_Delegate?
    var data : NSData?
    func connect(url:String,serviceName:String)
    {
      //  data=NSData()
        let url = NSURL (string: "http://api.androidhive.info/json/movies.json")
        
        let request = NSURLRequest(URL:  url!)
        
        let session = NSURLSession (configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        // UIApplication.sharedApplication().networkActivityIndicatorVisible = true
        
        // loader.startAnimating()
        
        let task = session.dataTaskWithRequest(request) { (data, response, error) in
            //  var json : NSObject
            do
            {
//                let  json = try NSJSONSerialization.JSONObjectWithData(data!, options: .AllowFragments)
//                /// for loop
//                //  let dic = json [0]
//                var counter :Int = json.count
//                for i : Int in 1..<counter {
//                    let dic = json [i]
//                    //
//                    //    let title : String? = dic.objectForKey("title") as? String
//                    //    let imageURL : String? = dic.objectForKey("image") as? String
//                    //    let rating : Float? = dic.objectForKey("rating") as? Float
//                    //    let releaseYear : Int? = dic.objectForKey("releaseYear") as? Int
//                    //    let genre : [String]? = dic.objectForKey("genre") as? [String]
//                    //
//                    //   var movie1: Movie = Movie(title: title, image: imageURL, rating:rating , releaseYear: releaseYear, genre: genre!)
//                    // NSData * imageData = initWiithContentOFURL
//                    //UIImage imageWithData
//                    // 3lshan 2gyb main thread bt3ty
//                    //     var json = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments) as NSArray
//                    //    print(json)
//                    //    self.array.append(movie1)
//                    //dispatch_async(dispatch_get_main_queue(), {
//                        //   self.myLabel.text = title!
//                        //  self.loader.stopAnimating()
//                        //self.tableView.reloadData()
//                        // UIApplication.sharedApplication().networkActivityIndicatorVisible = false
//                  //  })
//              }
                
            } catch {
                print("Error")
            }
            
        }
        task.resume()
        
       // myDelegat?.handle(data!, serviceName: serviceName)
       
        //return data!
    }
    

}
