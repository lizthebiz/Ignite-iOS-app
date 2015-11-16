//
//  InviteMariaViewController.swift
//  Ignite
//
//  Created by Liz Dalay on 11/15/15.
//  Copyright © 2015 Liz Dalay. All rights reserved.
//

import UIKit

class InviteMariaViewController: UIViewController {
    
    @IBOutlet weak var selectedIconImageView: UIImageView!

    @IBOutlet weak var fullNameImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.selectedIconImageView.alpha = 0
        
        self.fullNameImageView.alpha = 0
        
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

    @IBAction func onTap(sender: AnyObject) {
        
        self.selectedIconImageView.alpha = 1
        
        self.fullNameImageView.alpha = 1
        
    }
}
