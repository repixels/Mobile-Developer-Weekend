//
//  LoginViewController.swift
//  Mobile Developer Weekend
//
//  Created by RE Pixels on 6/3/16.
//  Copyright © 2016 ITI. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage
import EZSwiftExtensions

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonPressed(sender: AnyObject)
    {
        WebserviceManager.getUserInfo(URLs.loginURL("ehab.m.ashraf@gmail.com", password: "72623422")) { (user:User? , code:String?) -> Void in
            print(user!)
//            DataBaseOperation.AddUser(user!)
        }
        
        var testGetUSer =  DataBaseOperation.getUser("ehab.m.ashraf@gmail.com")
        
        let user = testGetUSer[0]
        print("user name \(user.valueForKey("first_name")) \n")
        print("user last name \(user.valueForKey("last_name")) \n")
        print("user email  \(user.valueForKey("email")) \n")
        print("user QR  \(user.valueForKey("qr_code")) \n")
        let contactInfo = user.valueForKey("contact_info")
        print(contactInfo?.phoneNumber)
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
