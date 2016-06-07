//
//  Speaker.swift
//  Mobile Developer Weekend
//
//  Created by RE Pixels on 5/26/16.
//  Copyright © 2016 ITI. All rights reserved.
//

import Foundation
import CoreData
import ObjectMapper

class Speaker: NSManagedObject, Mappable
{
    override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }
    
    required init?(_ map: Map) {
        
        let appdelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext = appdelegate.managedObjectContext
        let entity = NSEntityDescription.entityForName("Speaker", inManagedObjectContext: managedContext)
        
        super.init(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        mapping(map)
        
    }
    
    func mapping(map: Map) {
        
        var speakerImage = String()
        
        self.first_name <- map["firstName"]
        self.last_name <- map["lastName"]
        self.middle_name <- map["middleName"]
        self.company_name <- map["companyName"]
        self.title <- map["title"]
        self.biography <- map["biography"]
        
        speakerImage <- map["imageURL"]
        
    }
}
