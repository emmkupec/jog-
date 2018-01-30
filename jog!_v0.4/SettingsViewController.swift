//
//  SettingsViewController.swift
//  jog!_v0.4
//
//  Created by emma kupec on 1/16/18.
//  Copyright © 2018 Emma Kupec. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBAction func cancelSettingsAction(_ sender: Any) {
        
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "sbPageViewController")
        self.present(vc!, animated: true, completion: nil)
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
