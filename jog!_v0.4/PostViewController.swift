//
//  PostViewController.swift
//  jog!_v0.4
//
//  Created by emma kupec on 1/11/18.
//  Copyright © 2018 Emma Kupec. All rights reserved.
//

import UIKit
import FirebaseDatabase
import FirebaseDatabase


var ref = DatabaseReference!.self

class PostViewController: UIViewController {
 
    
    @IBAction func cancelPostAction(_ sender: Any) {
        performSegue(withIdentifier: "cancelPostSegue", sender: self)
    }
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    var ref: DatabaseReference?
    var databaseHandle:DatabaseHandle?
    
    
    
    @IBAction func postAction(_ sender: Any) {
        ref = Database.database().reference()
        
        ref?.child("list").childByAutoId().setValue(textField.text) //text field put into database text
        
        ref?.child("list").observe(.childAdded, with: { (snapshot) in
            let post = snapshot.value as? String
            self.label.text = post
            
            
        })
        
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
