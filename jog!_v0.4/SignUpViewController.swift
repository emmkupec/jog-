//
//  SignUpViewController.swift
//  jog!_v0.4
//
//  Created by Justin Kupec on 11/18/17.
//  Copyright © 2017 Emma Kupec. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class SignUpViewController: UIViewController {

    //sign up email collection
    @IBOutlet weak var signUpEmailCollection: UITextField!
    //sign up password collection
    @IBOutlet weak var signUpPasswordCollection: UITextField!
    //sign up password confirm
    @IBOutlet weak var signUpPasswordConfirm: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //sign up action
    @IBAction func signUpAction(_ sender: Any) {
       print ("test")
        
    if (signUpEmailCollection.text == nil) || (signUpPasswordCollection.text == nil) || signUpPasswordConfirm.text == ""  {
           
            let alertController = UIAlertController(title: "Error", message: "Please Enter Your Email or Password.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
        }
            if signUpPasswordCollection.text != signUpPasswordConfirm.text {
                let alertController = UIAlertController(title: "Error", message: "Your password does not match.", preferredStyle: .alert)
                
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                alertController.addAction(defaultAction)
                
 
                
           }
            else {
           
                Auth.auth().createUser(withEmail: signUpEmailCollection.text!, password: signUpPasswordCollection.text!) { (user, error) in }
                
                print("Welcome to the Team!")
                
                performSegue(withIdentifier: "signUpSegue", sender: self)
                
               /* let vc = self.storyboard?.instantiateViewController(withIdentifier: "sbSetup")
                self.present(vc!, animated: true, completion: nil)*/
            //}
            
        }
    }
        
    
    
    
    //login if already a member
    @IBAction func toLoginAction(_ sender: Any) {
        performSegue(withIdentifier: "toLoginSegue", sender: self)
        
    }
    
    
    
    
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
