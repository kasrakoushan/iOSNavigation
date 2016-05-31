//
//  RegistrationViewController.swift
//  Day2Morning
//
//  Created by Kasra Koushan on 2016-05-31.
//  Copyright © 2016 Kasra Koushan. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet var emailField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Register"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func registerButtonTapped(sender: UIButton) {
        print("Register button in registration page tapped")
        let email = emailField.text
        let password = passwordField.text
        let (failureMessage, user) = UserController.sharedInstance.registerUser(email!, newPassword: password!)
        if user != nil {
            let alertController = UIAlertController(title: "User registered",
                                                    message: "Username \(user!.email). Feel free to log in.",
                                                    preferredStyle: .Alert)
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action: UIAlertAction) in
                print("Register message given")
            }
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion: nil)
            
        } else if failureMessage != nil {
            print("User registration failed: \(failureMessage!)")
            let alertController = UIAlertController(title: "Could not register",
                                                    message: failureMessage, preferredStyle: .Alert)
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action: UIAlertAction!) in
                print("Error message given")
            }
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion: nil)

        }
        
        
    }
}
