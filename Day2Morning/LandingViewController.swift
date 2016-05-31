//
//  LandingViewController.swift
//  Day2Morning
//
//  Created by Kasra Koushan on 2016-05-31.
//  Copyright © 2016 Kasra Koushan. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
        print("Login button tapped")
        let loginViewController = LoginViewController(nibName: "LoginViewController", bundle: nil)
        self.navigationController?.pushViewController(loginViewController, animated: true)
        
    }
    
    
    @IBAction func registerButtonTapped(sender: UIButton) {
        print("Register button tapped")
        let registrationViewController = RegistrationViewController(nibName: "RegistrationViewController", bundle: nil)
        self.navigationController?.pushViewController(registrationViewController, animated: true)
        
    }
    

}
