//
//  Session+CoreDataProperties.swift
//  Mobile Developer Weekend
//
//  Created by RE Pixels on 5/26/16.
//  Copyright © 2016 ITI. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Session {

    @NSManaged var end_date: NSDate?
    @NSManaged var location: String?
    @NSManaged var name: String?
    @NSManaged var session_description: String?
    @NSManaged var start_date: NSDate?
    @NSManaged var type: String?
    @NSManaged var liked: NSNumber?
    @NSManaged var speaker: NSSet?

}
