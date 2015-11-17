//
//  PostPublishViewController.swift
//  Ignite
//
//  Created by Anna Smalley on 11/15/15.
//  Copyright © 2015 Liz Dalay. All rights reserved.
//

import UIKit

class PostPublishViewController: UIViewController {

 
    @IBOutlet weak var publishConfirmationBlip: UIImageView!
   
    @IBOutlet weak var parentViewOldFeed: UIView!
    
    @IBOutlet weak var rebeccaProject: UIView!
    
    @IBOutlet weak var confirmBlip2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        parentViewOldFeed.alpha = 0
        
        publishConfirmationBlip.alpha = 0
        
        confirmBlip2.alpha = 0
        
        rebeccaProject.alpha = 0
        
        
        //when screen loads, immediately start rapidly fading in the parent feed
        UIView.animateWithDuration(0.0, delay: 0.0, options: [], animations: { () -> Void in
            self.parentViewOldFeed.alpha = 1
            }) { (Bool) -> Void in
                []
        }
        
        //also when the screen loads, immediately start rapidly fading in publish confirm blip2. When it's done coming in, immediately start to slowly take it out.
        UIView.animateWithDuration(0.2, delay: 0.0, options: [], animations: { () -> Void in
            
            self.confirmBlip2.alpha = 1
            
            }) { (Bool) -> Void in
                [UIView.animateWithDuration(1.5, delay: 0.8, options: [], animations: { () -> Void in
                    self.confirmBlip2.alpha = 0
                    }) { (Bool) -> Void in
                        []
                    } ]
        }
        
    
        //a bit after loading, start slowly moving the original projects in the "parent" feed down.
        //when the "parent feed" is done moving down, wait a bit and then start quickly fading in rebecca's project.
        UIView.animateWithDuration(0.5, delay: 0.3, options: [], animations: { () -> Void in
            self.parentViewOldFeed.center.y = 725
            }, completion: { (Bool) -> Void in [UIView.animateWithDuration(0.1, animations: { () -> Void in
                
                self.rebeccaProject.alpha = 1
                //self.confirmBlip2.alpha = 0
                
            }) ]
        })
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }
    
    
    //3 seconds after loading, start fading in publish confirm blip inside rebecca's project
    //        UIView.animateWithDuration(1.6, delay: 2.9, options: [], animations: { () -> Void in
    //
    //            self.publishConfirmationBlip.alpha = 1
    //
    //            }) { (Bool) -> Void in
    //                []
    //        }
    
    
    
    //also when it's done moving down, start fading in the confirmation blip over .2 seconds
    //        UIView.animateWithDuration(0.4, delay: 0.8, options: [], animations: { () -> Void in
    //            self.publishConfirmationBlip.alpha = 1
    //            }) { (Bool) -> Void in
    //                []
    //        }
    
    //        //after  publish confirmation is faded in, start fading it out over .4 seconds
    //        UIView.animateWithDuration(0.4, delay: 2.0, options: [], animations: { () -> Void in
    //            self.publishConfirmationBlip.alpha = 0
    //            }) { (Bool) -> Void in
    //                []
    //        }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
