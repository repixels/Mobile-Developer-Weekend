//
//  User+CoreDataProperties.swift
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

extension User {

    @NSManaged var company_name: String?
    @NSManaged var email: String?
    @NSManaged var first_name: String?
    @NSManaged var image: NSData?
    @NSManaged var last_name: String?
    @NSManaged var middle_name: String?
    @NSManaged var password: String?
    @NSManaged var qr_code: String?
    @NSManaged var title: String?
    @NSManaged var contact_info: NSSet?
    
    
    
    
        
    

}
