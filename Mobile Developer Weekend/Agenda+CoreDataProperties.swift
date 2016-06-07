//
//  Agenda+CoreDataProperties.swift
//  Mobile Developer Weekend
//
//  Created by RE Pixels on 6/8/16.
//  Copyright © 2016 ITI. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Agenda {

    @NSManaged var date: NSNumber?
    @NSManaged var sessions: NSSet?

}
