//
//  HomeViewController.swift
//  jog!_v0.4
//
//  Created by emma kupec on 1/11/18.
//  Copyright © 2018 Emma Kupec. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
  /*  @IBAction func postAction(_ sender: Any) {
        performSegue(withIdentifier: "postSegue", sender: self)
    } */
    
    
    @IBAction func postGestureAction(_ sender: Any) {
        
      /*  let alertController = UIAlertController(title: "YAY", message: "Long Gesture Recognized", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "yeet", style: .cancel, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
        */
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "sbPost")
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
