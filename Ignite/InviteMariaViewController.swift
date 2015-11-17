//
//  InviteMariaViewController.swift
//  Ignite
//
//  Created by Liz Dalay on 11/15/15.
//  Copyright © 2015 Liz Dalay. All rights reserved.
//

import UIKit

class InviteMariaViewController: UIViewController {
    
    @IBOutlet weak var placeholderTextField: UITextField!
    
    @IBOutlet weak var searchImageView: UIImageView!
    
    @IBOutlet weak var selectedImageView: UIImageView!
    
    @IBOutlet weak var fieldImageView: UIImageView!
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.searchImageView.alpha = 0
        
        self.selectedImageView.alpha = 0
        
        self.fieldImageView.alpha = 0
        
        nextButton.enabled = false
        
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
        
        self.searchImageView.alpha = 1
    }

    @IBAction func onSelect(sender: AnyObject) {
        
        self.selectedImageView.alpha = 1
        
        self.fieldImageView.alpha = 1
        
        placeholderTextField.endEditing(true)
        
        nextButton.enabled = true
        
        
    }
}
