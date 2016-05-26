//
//  HtmlRendering.swift
//  Mobile Developer Weekend
//
//  Created by Ahmed Hamdy on 5/26/16.
//  Copyright © 2016 ITI. All rights reserved.
//

import UIKit
import Foundation

class HtmlRendering{
    
    /* To use this method just create UILabel then label.attributedText = this method */
    static func renderHtml(let txt : String) -> NSAttributedString
    {
        let htmlFormat = txt
        let attrStr = try! NSAttributedString(
            data: htmlFormat.dataUsingEncoding(NSUnicodeStringEncoding, allowLossyConversion: true)!,
            options: [NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType],
            documentAttributes: nil)
        
        return attrStr
    }
    
    
}