//
//  LoginViewController.swift
//  Day2Morning
//
//  Created by Kasra Koushan on 2016-05-31.
//  Copyright © 2016 Kasra Koushan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var emailField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Login"

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
    
    @IBAction func loginButtonTapped(sender: UIButton) {
        print("Login button tapped in login page")
        let email = emailField.text
        let password = passwordField.text
        let (failureMessage, user) = UserController.sharedInstance.loginUser(email!, suppliedPassword: password!)
        if user != nil {
            let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            appDelegate.navigateToLoggedInNavigationController()
        } else if failureMessage != nil {
            print("User login failed: \(failureMessage!)")
            let alertController = UIAlertController(title: "Could not log in",
                                                    message: failureMessage, preferredStyle: .Alert)
            let OKAction = UIAlertAction(title: "OK", style: .Default) { (action: UIAlertAction!) in
                print("Error message given")
            }
            alertController.addAction(OKAction)
            self.presentViewController(alertController, animated: true, completion: nil)
        }
        
    }
    

}
