//
//  ProjectJoinedViewController.swift
//  Ignite
//
//  Created by Liz Dalay on 11/15/15.
//  Copyright © 2015 Liz Dalay. All rights reserved.
//

import UIKit

class ProjectJoinedViewController: UIViewController {

    @IBOutlet weak var welcomeConfirmImageView: UIImageView!
    
    @IBOutlet weak var projPageImageView: UIImageView!
    
    @IBOutlet weak var projPageScrollView: UIScrollView!
    
    @IBOutlet weak var mariaButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.mariaButton.alpha = 0
        
        projPageScrollView.contentSize = projPageImageView.image!.size
        
        UIView.animateWithDuration(0.5, delay: 0.8, options: [], animations: { () -> Void in
            
            self.welcomeConfirmImageView.alpha = 1
            self.mariaButton.alpha = 1
            
            }) { (Bool) -> Void in
                [UIView.animateWithDuration(2.5, delay: 0.4, options: [], animations: { () -> Void in
                    self.welcomeConfirmImageView.alpha = 0
                    }) { (Bool) -> Void in
                        []
                    } ]
        }
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

}
