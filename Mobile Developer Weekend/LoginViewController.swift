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
//        WebserviceManager.getExhibitors("http://www.mobiledeveloperweekend.net/service/getExhibitors?userName=ehab.m.ashraf@gmail.com")
        
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
