//
//  NetWork_Delegate.swift
//  Mobile Developer Weekend
//
//  Created by Nrmeen Tomoum on 5/29/16.
//  Copyright © 2016 ITI. All rights reserved.
//

import Foundation
protocol NetWork_Delegate {
   // func addMovieDelegate(movie : Movie)
    func handle(dataRetreived : NSData,serviceName:String)
    
}