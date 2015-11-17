//
//  ProjectPageViewController.swift
//  Ignite
//
//  Created by Liz Dalay on 11/15/15.
//  Copyright © 2015 Liz Dalay. All rights reserved.
//

import UIKit

class ProjectPageViewController: UIViewController {

    @IBOutlet weak var projPageView: UIView!
    
    @IBOutlet weak var projPageScrollView: UIScrollView!
    
    @IBOutlet weak var mariaButton: UIButton!
    
    @IBOutlet weak var welcomeImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //projPageScrollView.contentSize = projPageImageView.image!.size
        
        projPageScrollView.contentSize = CGSize(width: 375, height: 720)
        
        self.mariaButton.alpha = 0
        self.welcomeImageView.alpha = 0
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
        UIView.animateWithDuration(0.4, delay: 0.5, options: [], animations: { () -> Void in
            
            self.projPageView.center.y = 333
            
            }) { (Bool) -> Void in
                []
                
        }
        
        UIView.animateWithDuration(0.5, delay: 0.8, options: [], animations: { () -> Void in
            
            self.welcomeImageView.alpha = 1
            //self.mariaButton.alpha = 1
            
            }) { (Bool) -> Void in
                [UIView.animateWithDuration(1.5, delay: 0.4, options: [], animations: { () -> Void in
                    self.welcomeImageView.alpha = 0
                    self.mariaButton.alpha = 1
                    }) { (Bool) -> Void in
                        []
                    } ]
        }
    }
}
