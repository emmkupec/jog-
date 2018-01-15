//
//  LoginViewController.swift
//  jog!_v0.4
//
//  Created by Justin Kupec on 11/18/17.
//  Copyright © 2017 Emma Kupec. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {
    
    // login email
    @IBOutlet weak var loginEmail: UITextField!
    //login password
    @IBOutlet weak var loginPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    //log into account action
    
    
    @IBAction func loginAction(_ sender: Any) {
        
        
        if (loginEmail.text == "") || (loginPassword.text == "") {
            
            
            let alertController = UIAlertController(title: "Error", message: "Please Enter Your Email and Password.", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
            
            
            
            
        } else  {
            
            Auth.auth().signIn(withEmail: loginEmail.text!, password: loginPassword.text!) { (user, error) in
            }
            
            print("Welcome Back!")
            
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "sbPageViewController")
            self.present(vc!, animated: true, completion: nil)
            
            
            
        }
        
        
        
        // performSegue(withIdentifier: "loginSegue", sender: self)
        
        
        
        
        
        
        
    }
    //to signup action
    @IBAction func toSignupAction(_ sender: Any) {
        performSegue(withIdentifier: "toSignUpSegue", sender: self)
        
        
    }
    
    
    
    
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
}

