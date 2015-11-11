//
//  customTabViewController.swift
//  Ignite
//
//  Created by Liz Dalay on 11/11/15.
//  Copyright © 2015 Liz Dalay. All rights reserved.
//

import UIKit

class customTabViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    
    var homeViewController: UIViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let storyboard = UIStoryboard (name: "Main", bundle: nil)
        
        homeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        
        onHomeButton(self)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func onHomeButton(sender: AnyObject) {
        
        //add to every new View Controller associated with tab section
        addChildViewController(homeViewController)
        
        homeViewController.view.frame = contentView.frame
        
        contentView.addSubview(homeViewController.view)
        
        //also add to every new View Controller associated with tab section
        homeViewController.didMoveToParentViewController(self)
        
    }

}
