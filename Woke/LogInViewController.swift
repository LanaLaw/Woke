//
//  LogInViewController.swift
//  Woke
//
//  Created by EJL on 8/14/16.
//  Copyright © 2016 MEC Revolutionaries. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
   
    @IBAction func SignUpButtonTapped(sender: AnyObject) {
        
        //If button is tapped, go to next page
        self.dismissViewControllerAnimated(true, completion: nil)
        self.performSegueWithIdentifier("View controller name", sender: self)



    }

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

}
