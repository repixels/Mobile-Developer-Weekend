//
//  DataBaseOperation.swift
//  Mobile Developer Weekend
//
//  Created by Amr on 5/28/16.
//  Copyright © 2016 ITI. All rights reserved.
//
import UIKit
import Foundation
import CoreData

class DataBaseOperation : NSManagedObject  {
    
    static let appdelegate = UIApplication.sharedApplication().delegate as! AppDelegate
    static let managedContext = appdelegate.managedObjectContext
    
    
    
    static func GetObjectContext () -> NSManagedObjectContext {
        
        
        return managedContext
        
    }
    
    static func AddUser(Usernew :User ) ->Void{
        
        let entity = NSEntityDescription.entityForName("User", inManagedObjectContext: self.managedContext)
        
        let User = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: self.managedContext)
        
        User.setValue(Usernew.company_name, forKey: "company_name")
        User.setValue(Usernew.first_name, forKey: "first_name")
        User.setValue(Usernew.last_name, forKey: "last_name")
        User.setValue(Usernew.middle_name, forKey: "middle_name")
        User.setValue(Usernew.email, forKey: "email")
        
        User.setValue(Usernew.image, forKey: "image")
        User.setValue(Usernew.password ,forKey: "password")
        User.setValue(Usernew.qr_code, forKey: "qr_code")
        User.setValue(Usernew.title, forKey: "title")
        User.setValue(Usernew.contact_info, forKey: "contact_info")

        User.managedObjectContext
        
        do{
            
            
            
            
            try managedContext.save()
        }
        catch{
            
            
            print (" There is an Error In saving User ")
        }
        
        
        
        
    }
    
    
    static func getUser(email : String) -> [NSManagedObject]{
        var user : [NSManagedObject]?
        
        
        let fetchUser = NSFetchRequest(entityName: "User")
        
        // if you want to add constrain
        let predicate = NSPredicate(format: "email = %@", email)
        
         fetchUser.predicate = predicate
        
        
        do{
            user = try  managedContext.executeFetchRequest(fetchUser) as? [NSManagedObject]
            
        }
        catch{
            
            print("There is an Error in getting User")
        }
        
        
        
        return user!
        
        
    }
    

    
    static func addSpeaker(Speakernew :Speaker ) ->Void{
        
        let entity = NSEntityDescription.entityForName("Speaker", inManagedObjectContext: self.managedContext)
        
        
        let Speaker = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: self.managedContext)
        
        Speaker.setValue(Speakernew .biography, forKey: "biography")
        Speaker.setValue(Speakernew .company_name, forKey: "company_name")
        Speaker.setValue(Speakernew .first_name, forKey: "first_name")
        Speaker.setValue(Speakernew .image, forKey: "image")
        Speaker.setValue(Speakernew .last_name, forKey: "last_name")
        
        Speaker.setValue(Speakernew .middle_name, forKey: "middle_name")
        Speaker.setValue(Speakernew .title ,forKey: "title")
        Speaker.setValue(Speakernew .contact_info, forKey: "contact_info")
        Speaker.setValue(Speakernew .session, forKey: "session")
        
        
        
        
        
        
        
        do{
            
            
            
            
            try managedContext.save()
        }
        catch{
            
            
            print (" There is an Error In saving Speaker ")
        }
        
        
        
        
    }
    
    
    static func getAllSpeaker() -> [NSManagedObject]{
        var speakers : [NSManagedObject]?
        
        
        let fetchUser = NSFetchRequest(entityName: "Speaker")
        
        // if you want to add constrain
//        var predicate = NSPredicate(format: "email = %@", email)
//        
//        fetchUser.predicate = predicate
        
        
        do{
            speakers = try  managedContext.executeFetchRequest(fetchUser) as? [NSManagedObject]
            
        }
        catch{
            
            print("There is an Error in getting User")
        }
        
        
        
        return speakers!
        
        
    }
    


    static func addExhibitor(Exhibitornew :Exhibitor ) ->Void{
        
        let entity = NSEntityDescription.entityForName("Exhibitor", inManagedObjectContext: self.managedContext)
        
        
        let Exhibitor = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: self.managedContext)
        
        Exhibitor.setValue(Exhibitornew.company_name, forKey: "company_name")
        Exhibitor.setValue(Exhibitornew.company_url, forKey: "company_url")
        Exhibitor.setValue(Exhibitornew.image, forKey: "image")
        Exhibitor.setValue(Exhibitornew.contact_info, forKey: "contact_info")
        
        
        
        
        do{
            
            
            
            
            try managedContext.save()
        }
        catch{
            
            
            print (" There is an Error In saving Exhibitor ")
        }
        
        
        
        
    }
    
    static func getAllExhibitor() -> [NSManagedObject]{
        var Exhibitor : [NSManagedObject]?
        
        
        let fetchUser = NSFetchRequest(entityName: "Exhibitor")
        
        // if you want to add constrain
        //        var predicate = NSPredicate(format: "email = %@", email)
        //
        //        fetchUser.predicate = predicate
        
        
        do{
            Exhibitor = try  managedContext.executeFetchRequest(fetchUser) as? [NSManagedObject]
            
        }
        catch{
            
            print("There is an Error in getting Exhibitor")
        }
        
        
        
        return Exhibitor!
        
        
    }
    

    
    static func addContactInfo(ContactInfoNew :Contact_Info ) ->Void{
        
        let entity = NSEntityDescription.entityForName("Contact_Info", inManagedObjectContext: self.managedContext)
        
        
        let Contactnew = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: self.managedContext)
        
        let contactNumber = Int(ContactInfoNew.number)
        
        Contactnew.setValue(ContactInfoNew.info_type, forKey: "info_type")
        Contactnew.setValue(contactNumber, forKey: "number")
        Contactnew.setValue(ContactInfoNew.owner_id, forKey: "owner_id")
        Contactnew.setValue(ContactInfoNew.owner_type, forKey: "owner_type")
        Contactnew.setValue(ContactInfoNew.exhibitor, forKey: "exhibitor")

        Contactnew.setValue(ContactInfoNew.speaker, forKey: "speaker")

        Contactnew.setValue(ContactInfoNew.user, forKey: "user")

        
        
        
        
        do{
            
            
            
            
            try managedContext.save()
        }
        catch{
            
            
            print (" There is an Error In saving Contactnew ")
        }
        
        
        
        
    }

    
    static func addSession(sessionNew :Session ) ->Void{
        
        let entity = NSEntityDescription.entityForName("Session", inManagedObjectContext: self.managedContext)
        
        
        let Session = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: self.managedContext)
        
        Session.setValue(sessionNew.end_date, forKey: "end_date")
        Session.setValue(sessionNew.liked, forKey: "liked")
        Session.setValue(sessionNew.location, forKey: "location")
        Session.setValue(sessionNew.session_description, forKey: "session_description")
        Session.setValue(sessionNew.start_date, forKey: "start_date")
        
        Session.setValue(sessionNew.speaker, forKey: "speaker")
        
        Session.setValue(sessionNew.type, forKey: "type")
        Session.setValue(sessionNew.name, forKey: "name")
        Session.setValue(Int(sessionNew.session_id), forKey: "session_id")
        Session.setValue(Int(sessionNew.status), forKey: "status")
        
        
        
        
        
        do{
            
            
            
            
            try managedContext.save()
        }
        catch{
            
            
            print (" There is an Error In saving Session ")
        }
        
        
        
        
    }
    
    static func getAllSession() -> [NSManagedObject]{
        var Session : [NSManagedObject]?
        
        
        let fetchUser = NSFetchRequest(entityName: "Session")
        
        // if you want to add constrain
        //        var predicate = NSPredicate(format: "email = %@", email)
        //
        //        fetchUser.predicate = predicate
        
        
        do{
            Session = try  managedContext.executeFetchRequest(fetchUser) as? [NSManagedObject]
            
        }
        catch{
            
            print("There is an Error in getting Exhibitor")
        }
        
        
        
        return Session!
        
        
    }
    

}
