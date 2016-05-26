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

    @NSManaged var end_date: NSTimeInterval
    @NSManaged var location: String?
    @NSManaged var name: String?
    @NSManaged var session_description: String?
    @NSManaged var start_date: NSTimeInterval
    @NSManaged var type: String?
    @NSManaged var liked: Bool
    @NSManaged var status: Int16
    @NSManaged var session_id: Int16
    @NSManaged var speaker: NSSet?

}
