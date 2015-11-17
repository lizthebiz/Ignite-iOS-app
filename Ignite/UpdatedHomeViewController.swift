//
//  UpdatedHomeViewController.swift
//  Ignite
//
//  Created by Liz Dalay on 11/15/15.
//  Copyright © 2015 Liz Dalay. All rights reserved.
//

import UIKit

class UpdatedHomeViewController: UIViewController {

    @IBOutlet weak var feedbackImageView: UIImageView!
    
    @IBOutlet weak var publishedImageView: UIImageView!
    
    @IBOutlet weak var previousImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        self.feedbackImageView.alpha = 0
        self.publishedImageView.alpha = 0
        
        //when screen loads, immediately start rapidly fading in the parent feed
        UIView.animateWithDuration(0.0, delay: 0.0, options: [], animations: { () -> Void in
            self.previousImageView.alpha = 1
            }) { (Bool) -> Void in
                []
        }
        
        //also when the screen loads, immediately start rapidly fading in publish confirm blip2. When it's done coming in, immediately start to slowly take it out.
        UIView.animateWithDuration(0.2, delay: 0.0, options: [], animations: { () -> Void in
            
            self.feedbackImageView.alpha = 1
            
            }) { (Bool) -> Void in
                [UIView.animateWithDuration(1.5, delay: 0.0, options: [], animations: { () -> Void in
                    self.feedbackImageView.alpha = 0
                    }) { (Bool) -> Void in
                        []
                    } ]
        }
        
        
        //a bit after loading, start slowly moving the original projects in the "parent" feed down.
        //when the "parent feed" is done moving down, wait a bit and then start quickly fading in rebecca's project.
        UIView.animateWithDuration(0.9, delay: 0.6, options: [], animations: { () -> Void in
            self.previousImageView.center.y = +720
            }, completion: { (Bool) -> Void in [UIView.animateWithDuration(0.1, animations: { () -> Void in
                
                self.publishedImageView.alpha = 1
                //self.confirmBlip2.alpha = 0
                
            }) ]
        })
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
