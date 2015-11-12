//
//  categoriesViewController.swift
//  Ignite
//
//  Created by Liz Dalay on 11/12/15.
//  Copyright © 2015 Liz Dalay. All rights reserved.
//

import UIKit

class categoriesViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var categoriesScrollView: UIScrollView!

    @IBOutlet weak var categoriesView: UIView!
    
    @IBOutlet weak var nextBarView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.nextBarView.alpha = 1
        
        categoriesScrollView.delegate = self
        
        categoriesScrollView.contentSize = CGSizeMake(375, 1341)
        
        
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
