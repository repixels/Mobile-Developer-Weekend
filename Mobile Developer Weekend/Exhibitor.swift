//
//  Exhibitor.swift
//  Mobile Developer Weekend
//
//  Created by RE Pixels on 5/26/16.
//  Copyright © 2016 ITI. All rights reserved.
//

import Foundation
import CoreData
import ObjectMapper


class Exhibitor: NSManagedObject, Mappable
{
    override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }
    
    required init?(_ map: Map) {
        
        let appdelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext = appdelegate.managedObjectContext
        let entity = NSEntityDescription.entityForName("Exhibitor", inManagedObjectContext: managedContext)
        
        super.init(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        mapping(map)
        
    }
    
    func mapping(map: Map) {
        
        var imageURL = String()
        
        self.company_name <- map["companyName"]
        self.contact_info <- map["phones"]
        self.company_url <- map["companyUrl"]
        imageURL <- map["imageURL"]
    }
}
