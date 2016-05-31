//
//  LoggedInViewController.swift
//  Day2Morning
//
//  Created by Kasra Koushan on 2016-05-31.
//  Copyright © 2016 Kasra Koushan. All rights reserved.
//

import UIKit

class LoggedInViewController: UIViewController {

    
    @IBOutlet var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user = UserController.sharedInstance.logged_in_user!
        greetingLabel.text = "Welcome, \(user.email)!"
        greetingLabel.numberOfLines = 0
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

}
