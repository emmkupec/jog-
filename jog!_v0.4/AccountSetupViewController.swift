//
//  AccountSetupViewController.swift
//  jog!_v0.4
//
//  Created by Justin Kupec on 11/18/17.
//  Copyright © 2017 Emma Kupec. All rights reserved.
//

import UIKit
import FirebaseDatabase

class AccountSetupViewController: UIViewController {
 
    var ref: DatabaseReference!
    
    let actual_email:String = email
    
    
    //username selction
    @IBOutlet weak var signUpUsername: UITextField!
    //first name collection
    @IBOutlet weak var firstNameCollection: UITextField!
    //last name collection
    @IBOutlet weak var lastNameCollection: UITextField!
    //finish setting up account action

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print (actual_email + " second")
        ref = Database.database().reference()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func finishAccountAction(_ sender: Any) {
        //performSegue(withIdentifier: "finishSegue", sender: self)
        if signUpUsername.text != nil{
             var actual_email = email.replacingOccurrences(of: ".", with: "")
            ref?.child("Users").child(actual_email).childByAutoId().setValue(signUpUsername.text) //remove the email
            

        }
        else {
            //show error dialog
            
        }
        if (firstNameCollection.text == nil) && (lastNameCollection.text == nil) {
       //error dialog
         
         
         } else {
           /* ref?.child("Troll").child("Users").child(signUpUsername.text!).child("First Name").setValue(firstNameCollection.text)
            ref?.child("Troll").child("Users").child(signUpUsername.text!).child("Last Name").setValue(lastNameCollection.text)*/
         }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   


}
