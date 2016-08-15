  //
//  SignUpPageViewController.swift
//  Woke
//
//  Created by EJL on 8/12/16.
//  Copyright © 2016 MEC Revolutionaries. All rights reserved.
//

import UIKit

class SignUpPageViewController: UIViewController {
   
    @IBOutlet weak var UserFirstNameTextField: UITextField!
    
    @IBOutlet weak var UserLastNameTextField: UITextField!
    
    @IBOutlet weak var UserEmailTextField: UITextField!
    
    @IBOutlet weak var UserPasswordTextField: UITextField!
    
    
    @IBOutlet weak var UserRetypePasswordTextField: UITextField!
    
    //@IBOutlet weak var UserFirstNameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func doneButtonTapped(sender: AnyObject) {
        
        let userFirstName = UserFirstNameTextField.text;
        let userLastName = UserLastNameTextField.text;
        let userEmail = UserEmailTextField.text;
        let userPassword = UserPasswordTextField.text;
        let userRetypePassword = UserRetypePasswordTextField.text;
        
        func displayMyAlertMessage(userMessage: String)
        {
            let myAlert = UIAlertController(title: "Alert",message: userMessage, preferredStyle: UIAlertControllerStyle.Alert);
            
            let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil);
            
            myAlert.addAction(okAction);
            
            self.presentViewController(myAlert, animated: true, completion: nil );
        
        }
        
        
        
        // Check for empty fields 
        
        if(userFirstName!.isEmpty || userLastName!.isEmpty || userEmail!.isEmpty || userPassword!.isEmpty || userRetypePassword!.isEmpty)
        {
        
            
            //Display Alert Message
            
            displayMyAlertMessage("All fields are required");
            return;
            
        }
        
        //Check if passwords match 
        
        if(userPassword != userRetypePassword)
        {
             //Display Alert Message
        displayMyAlertMessage("Passwords do not match");
            return;
            
            
        }
        
        // Store data 
        
        NSUserDefaults.standardUserDefaults().setObject(userFirstName, forKey:"userFirstName")
            NSUserDefaults.standardUserDefaults().setObject(userLastName, forKey:"userLastName")
            NSUserDefaults.standardUserDefaults().setObject(userEmail, forKey:"userEmail")
            NSUserDefaults.standardUserDefaults().setObject(userPassword, forKey:"userPassword")
            NSUserDefaults.standardUserDefaults().setObject(userRetypePassword, forKey:"userRetypePassword")
        
        NSUserDefaults.standardUserDefaults().synchronize();
        
        //Display alert message with confirmation
        
        let myAlert = UIAlertController(title: "Alert",message:"Sign up is successful! Thank you!", preferredStyle: UIAlertControllerStyle.Alert);
        
         let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default){ action in
            self.dismissViewControllerAnimated(true, completion: nil);
            }
        
        return myAlert.addAction(okAction)
    
    
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    };
  }