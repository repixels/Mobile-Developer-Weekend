//
//  Session.swift
//  Mobile Developer Weekend
//
//  Created by RE Pixels on 5/26/16.
//  Copyright © 2016 ITI. All rights reserved.
//

import Foundation
import CoreData
import ObjectMapper


class Session: NSManagedObject, Mappable
{
    override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }
    
    required init?(_ map: Map) {
        
        let appdelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext = appdelegate.managedObjectContext
        let entity = NSEntityDescription.entityForName("Session", inManagedObjectContext: managedContext)
        
        super.init(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        mapping(map)
        
    }
    
    func mapping(map: Map) {
        
        var sessionSpeaker : [Speaker]?
        
        self.end_date <- map["endDate"]
        self.status <- map["status"]
        self.liked <- map["liked"]
        self.location <- map["location"]
        self.name <- map["name"]
        self.session_id <- map["id"]
        sessionSpeaker <- map["speakers"]
        self.start_date <- map["startDate"]
        self.type <- map["sessionType"]
        self.session_description <- map["description"]
        
        if sessionSpeaker != nil
        {
            self.speaker = NSSet(array: sessionSpeaker!)
        }
        else
        {
            self.speaker = nil
        }
        sessionSpeaker = nil
        
        

    }

}
