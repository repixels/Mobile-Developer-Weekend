
//
//  User.swift
//  Mobile Developer Weekend
//
//  Created by RE Pixels on 5/26/16.
//  Copyright © 2016 ITI. All rights reserved.
//

import Foundation
import CoreData
import AlamofireObjectMapper
import ObjectMapper


class User:NSManagedObject , Mappable
{
    
    
    
    override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }
    
    required init?(_ map: Map) {
        
        let appdelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext = appdelegate.managedObjectContext
        let entity = NSEntityDescription.entityForName("User", inManagedObjectContext: managedContext)
        
        super.init(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        mapping(map)
        
    }

    func mapping(map: Map)
    {
        
        self.first_name <- map["firstName"]
        self.middle_name <- map["middleName"]
        self.last_name <- map["lastName"]
        
        self.company_name <- map["companyName"]
        self.title <- map["title"]
        
        self.email <- map["email"]
        
        self.qr_code <- map["code"]
        
        self.contact_info <- map["phones"]
    }
}
