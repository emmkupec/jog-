//
//  AccountSetupViewController.swift
//  jog!_v0.4
//
//  Created by Justin Kupec on 11/18/17.
//  Copyright © 2017 Emma Kupec. All rights reserved.
//

import UIKit

class AccountSetupViewController: UIViewController {
 
    
    
    
    //username selction
    @IBOutlet weak var signUpUsername: UITextField!
    //first name collection
    @IBOutlet weak var firstNameCollection: UITextField!
    //last name collection
    @IBOutlet weak var lastNameCollection: UITextField!
    //finish setting up account action
    @IBAction func finishAccountAction(_ sender: Any) {
        performSegue(withIdentifier: "finishSegue", sender: self)
      
        if (signUpUsername.text) == nil  {
            print("No Username")
        } else {
            var username = signUpUsername.text
            print(username as Any)
        }
        if (firstNameCollection.text == nil) || (lastNameCollection.text == nil) {
        print("No name(s)")
    
    
        } else {
           var fullName = (firstNameCollection.text, lastNameCollection.text)
            print(fullName as Any)
        }
    }
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   


}
