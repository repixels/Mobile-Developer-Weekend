//
//  QRGenerator.swift
//  Mobile Developer Weekend
//
//  Created by Ahmed Hamdy on 5/26/16.
//  Copyright © 2016 ITI. All rights reserved.
//


import UIKit
import ZXingObjC


class QRGenerator{
    
    
    /* To use this method just create UIimage then UIimage.image = this method and pass token and optionally width and height */
    static func generateQR(userToken : String,
        UIImageWidth imageWidth : Int32 = 500,
        UIImageHeight imageHeight : Int32 = 500) -> UIImage
    {
        var myImage : UIImage!
        let writers = ZXMultiFormatWriter.writer() as! ZXMultiFormatWriter
        var result : ZXBitMatrix?
        do
        {
            result = try writers.encode(userToken, format: kBarcodeFormatQRCode, width: imageWidth, height:imageHeight)
            
        }catch(let error)
        {
            print("ErrorMessage : \(error)")
        }
        
        if(result != nil)
        {
            myImage = UIImage(CGImage: ZXImage.init(matrix: result).cgimage)
        }
        else
        {
            print("No QR Created ! result is nil !")
        }
        
        return myImage
    }
    
    
}
