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
        
        
        print(URLs.getSpeakersURL(userEmail!))
        
        
        
        WebserviceManager.getUserInfo(URLs.loginURL(userEmail!, password: userPassword!)) { (user, code) in
            let returnedResult = code!
            print(returnedResult)
            switch returnedResult
            {
                case "view.sucess":
                    self.performSegueWithIdentifier("Login To Agenda", sender: self)
                    break;
                default:
                    self.generateErrorAlert(code)
                    break;
            }
        }

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        switch segue.identifier!
        {
            case "Login To Agenda":
                let defaults = NSUserDefaults.standardUserDefaults()
                defaults.setBool(true, forKey: "isLoggedIn")
                defaults.setObject(emailTextField.text, forKey: "userEmail")
                break;
            default: break
            
        }
    }
    
    
    @IBAction func registerButtonPressed(sender: AnyObject) {
    }
    
    
    func generateErrorAlert(errorMessage: String?)
    {
        if errorMessage != nil
        {
            let alert = UIAlertController(title: "Login Failed", message: errorMessage!, preferredStyle: UIAlertControllerStyle.Alert)
            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(defaultAction)
            self.presentViewController(alert, animated: true, completion: nil)
        }
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
