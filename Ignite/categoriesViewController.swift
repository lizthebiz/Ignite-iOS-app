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
    
    @IBOutlet weak var selectedTechImageView: UIImageView!
    
    @IBOutlet weak var selectedWomImageView: UIImageView!

    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.nextButton.alpha = 0
        self.selectedTechImageView.alpha = 0
        self.selectedWomImageView.alpha = 0
        
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

    @IBAction func onTapTech(sender: AnyObject) {
        
        self.selectedTechImageView.alpha = 1
        UIView.animateWithDuration(0.8, animations: {
            self.nextButton.alpha = 1
        })
    }
    

    @IBAction func onTapWom(sender: UIButton) {
        self.selectedWomImageView.alpha = 1
        UIView.animateWithDuration(0.8, animations: {
            self.nextButton.alpha = 1
        })
        
    }
}
