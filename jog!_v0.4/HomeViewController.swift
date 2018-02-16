//
//  HomeViewController.swift
//  jog!_v0.4
//
//  Created by emma kupec on 2/6/18.
//  Copyright © 2018 Emma Kupec. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase



class HomeViewController: UIViewController {
    
   
    

 
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func postGestureAction(_ sender: Any) {
    
    
  
        
        /*  let alertController = UIAlertController(title: "YAY", message: "Long Gesture Recognized", preferredStyle: .alert)
         
         let defaultAction = UIAlertAction(title: "yes", style: .cancel, handler: nil)
         alertController.addAction(defaultAction)
         
         present(alertController, animated: true, completion: nil)
 */
        
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "sbPost")
        self.present(vc!, animated: true, completion: nil)
        
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
}

