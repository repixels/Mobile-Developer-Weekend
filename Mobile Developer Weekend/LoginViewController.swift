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
import TextFieldEffects

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: HoshiTextField!
    @IBOutlet weak var passwordTextField: HoshiTextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginButtonPressed(sender: AnyObject) {
        
        let userEmail = emailTextField.text
        let userPassword = passwordTextField.text
        
        
        print(URLs.loginURL(userEmail!, password: userPassword!))
        
        WebserviceManager.getUserInfo(URLs.loginURL(userEmail!, password: userPassword!)) { (user, code) in
            let returnedResult = code!
            switch returnedResult
            {
                case "view.sucess":
                    print(user)
                    break;
                default:
                    print("Failure : \(code)")
                    break;
            }
        }
        
        
        
    }
    
    
    @IBAction func registerButtonPressed(sender: AnyObject) {
    }
    
//    func generate
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
