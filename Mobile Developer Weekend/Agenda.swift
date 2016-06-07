//
//  Agenda.swift
//  
//
//  Created by RE Pixels on 6/7/16.
//
//

import Foundation
import CoreData
import ObjectMapper


class Agenda: NSManagedObject , Mappable {

    override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }
    
    required init?(_ map: Map) {
        
        let appdelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let managedContext = appdelegate.managedObjectContext
        let entity = NSEntityDescription.entityForName("Agenda", inManagedObjectContext: managedContext)
        
        super.init(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        mapping(map)
        
    }
    
    
    func mapping(map: Map)
    {
        var sessionsArray : [Session]?
        self.date <- map["date"]
        sessionsArray <- map["sessions"]
        self.sessions = NSSet(array: sessionsArray!)
        sessionsArray = nil
    }

}
