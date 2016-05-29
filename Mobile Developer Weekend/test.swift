//
//  ViewController.swift
//  Mobile Developer Weekend
//
//  Created by RE Pixels on 5/26/16.
//  Copyright © 2016 ITI. All rights reserved.
//

import UIKit

class ViewController: UIViewController,NetWork_Delegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
      func handle(dataRetreived : NSData,serviceName:String)
      {
    if serviceName == "login"
    {
        // var dict :  NSDictionary =
        // set view like text
    }
    
    
      }
    func actionOfURL() {
        var urlOf_things = URLs.loginURL("Name", password: "passsword")
        self.connectToService(urlOf_things, serviceName: "login")
    }
    
    
    func connectToService(url:String, serviceName:String) {
     //  NetWork_Manager.connect(url, serviceName)
        var netWorkManager: NetWork_Manager = NetWork_Manager()
        netWorkManager.myDelegat = self
        netWorkManager.connect(url, serviceName: serviceName)
        
    }
    


}

