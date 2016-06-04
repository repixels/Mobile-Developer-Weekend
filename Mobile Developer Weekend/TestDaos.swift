//
//  TestDaos.swift
//  Mobile Developer Weekend
//
//  Created by Ahmed Hamdy on 6/3/16.
//  Copyright © 2016 ITI. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class TestDao  {
    
    
    static let appdelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    static let managedContext = appdelegate.managedObjectContext
    
    static func addUser(){
    
//        let testuser = User()
//

        let testuser = NSEntityDescription.insertNewObjectForEntityForName("User", inManagedObjectContext: managedContext) as! User
        
        let testContact = NSEntityDescription.insertNewObjectForEntityForName("Contact_Info", inManagedObjectContext: managedContext) as! Contact_Info
        
        testuser.first_name = "ahmed"
        testuser.middle_name = "hamdy"
        testuser.last_name = "kamal"
        testuser.email = "a@a.com"
        testuser.password = "123"
        testuser.qr_code = "qrTest"
        testuser.title = "job"
        
        testContact.owner_type = "user"
        testContact.info_type = "phone"
        testContact.number = 12345 // because Int16 Max 32000
        
//        testuser.contact_info = testContact
        testContact.user = testuser
        
        DataBaseOperation.AddUser(testuser)
        
        
    }
    
    
    static func getUser(){
        let email : String = "a@a.com"
        
        var testGetUSer =  DataBaseOperation.getUser(email)
       
        let user = testGetUSer[0]
        print("user name \(user.valueForKey("first_name")) \n")
        print("user last name \(user.valueForKey("last_name")) \n")
        print("user email  \(user.valueForKey("email")) \n")
        print("user QR  \(user.valueForKey("qr_code")) \n")

        
    }
    
    
}
