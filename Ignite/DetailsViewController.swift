//
//  DetailsViewController.swift
//  Ignite
//
//  Created by Liz Dalay on 11/16/15.
//  Copyright © 2015 Liz Dalay. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var updatedDeetsView: UIView!
    
    var counter = 1

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.updatedDeetsView.alpha = 0

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        //print("hi")
        self.counter += 1;
        
        if (counter > 1) {
            
            // different content gets loaded
            //print("hello")
            self.updatedDeetsView.alpha = 1
        }
    }

}
