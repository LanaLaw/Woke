//
//  ViewController.swift
//  Woke
//
//  Created by EJL on 8/10/16.
//  Copyright © 2016 MEC Revolutionaries. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ViewController: UIViewController {
    //MARK: Properties

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        var rootRef = FIRDatabase.database().reference()

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidAppear(animated: Bool){
        self.performSegueWithIdentifier("LoginView", sender: self);
            }

}

