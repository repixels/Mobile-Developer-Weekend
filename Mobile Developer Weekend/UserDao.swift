//
//  UserDao.swift
//  Mobile Developer Weekend
//
//  Created by Ahmed Hamdy on 5/27/16.
//  Copyright © 2016 ITI. All rights reserved.
//

import Foundation

class UserDao {
    
    //Insert Method
    static func insert(myUser: User) {
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate

        let managedContext = appDelegate.managedObjectContext
    
        let entity =  NSEntityDescription.entityForName("User", inManagedObjectContext:managedContext)
        
        let user = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        user.setValue(myUser.first_name, forKey: "first_name")
        user.setValue(myUser.middle_name, forKey: "middle_name")
        user.setValue(myUser.last_name, forKey: "last_name")
        user.setValue(myUser.email, forKey: "email")
        user.setValue(myUser.password, forKey: "password")
        user.setValue(myUser.qr_code, forKey: "qr_code")
        user.setValue(myUser.image, forKey: "image")
        user.setValue(myUser.company_name, forKey: "company_name")
        user.setValue(myUser.title, forKey: "title")
        
        do {
            
            try managedContext.save()
 
            
        } catch let error as NSError  {
            print("Could not save \(error), \(error.userInfo)")
        }
    }
    
    
    

    
}