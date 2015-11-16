//
//  DescripViewController.swift
//  Ignite
//
//  Created by Liz Dalay on 11/12/15.
//  Copyright © 2015 Liz Dalay. All rights reserved.
//

import UIKit

class DescripViewController: UIViewController {

    @IBOutlet weak var descripTextImageView: UIImageView!
    
    @IBOutlet weak var statusImageView: UIImageView!
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.nextButton.alpha = 0
        self.descripTextImageView.alpha = 0
        self.statusImageView.alpha = 0
        
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

    @IBAction func onTapTextField(sender: AnyObject) {
        
        self.descripTextImageView.alpha = 1
    }
    
    @IBAction func onTapStatus(sender: AnyObject) {
        
        self.statusImageView.alpha = 1
        
        UIView.animateWithDuration(0.8, animations: {
            self.nextButton.alpha = 1
        })
        
    }
}
