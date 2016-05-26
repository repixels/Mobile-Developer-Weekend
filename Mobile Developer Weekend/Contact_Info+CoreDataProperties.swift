//
//  Contact_Info+CoreDataProperties.swift
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

extension Contact_Info {

    @NSManaged var info_type: String?
    @NSManaged var number: NSNumber?
    @NSManaged var owner_id: String?
    @NSManaged var owner_type: String?
    @NSManaged var exhibitor: Exhibitor?
    @NSManaged var speaker: Speaker?
    @NSManaged var user: User?

}
