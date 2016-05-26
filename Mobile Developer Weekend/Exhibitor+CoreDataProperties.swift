//
//  Exhibitor+CoreDataProperties.swift
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

extension Exhibitor {

    @NSManaged var company_name: String?
    @NSManaged var company_url: String?
    @NSManaged var image: NSData?
    @NSManaged var contact_info: Contact_Info?

}
