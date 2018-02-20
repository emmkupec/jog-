//
//  ProfileViewController.swift
//  jog!_v0.4
//
//  Created by emma kupec on 1/11/18.
//  Copyright © 2018 Emma Kupec. All rights reserved.
//

import UIKit
import FirebaseDatabase


var ref2 = DatabaseReference!.self

class ProfileViewController: UIViewController {

    @IBAction func settingsGestureAction(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "sbSettings")
        self.present(vc!, animated: true, completion: nil)
        
    }
    @IBOutlet weak var usernameLabel: UILabel!
    
    
    
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
