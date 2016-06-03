//
//  URLs.swift
//  MDW_WebServise_Json
//
//  Created by Nrmeen Tomoum on 5/25/16.
//  Copyright © 2016 Nrmeen Tomoum. All rights reserved.
//

import Foundation

class URLs: NSObject {
    
    static func loginURL(userName : String, password :String) -> String{
        let  url="http://www.mobiledeveloperweekend.net/service/login?userName="+userName+"&password="+password
        return  url;
    }
    
    static func getSessionsURL(userName : String) -> String{
        let  url="http://www.mobiledeveloperweekend.net/service/getSessions?userName="+userName
        return  url;
    }
    static func getSpeakersURL(userName : String) -> String{
        let  url="http://www.mobiledeveloperweekend.net/service/getSpeakers?userName="+userName
        return  url;
    }
    
    static func getAttendeeProfileURL(userName : String) -> String{
        let  url="http://www.mobiledeveloperweekend.net/service/getAttendeeProfile?userName="+userName
        return  url;
    }
    static func profileImageURL(userName : String) -> String{
        let  url="http://www.mobiledeveloperweekend.net/service/profileImage?userName="+userName
        return  url;
    }
    
    static func attendAttendeeURL(code : String) -> String{
        let  url="http://www.mobiledeveloperweekend.net/service/attendAttendee?code="+code
        return  url;
    }
    
    static func getAttendeeAgendaURL(userName : String) -> String{
        let  url="http://www.mobiledeveloperweekend.net/service/getAttendeeAgenda?userName="+userName
        return  url;
    }
    
    static func registerSessionURL(userName : String) -> String{
        let  url="http://www.mobiledeveloperweekend.net/service/registerSession?userName="+userName
        return  url;
    }
    static func getExhibitorsURL(userName : String) -> String{
        let  url="http://www.mobiledeveloperweekend.net/service/getExhibitors?userName="+userName
        return  url;
    }
    
}
