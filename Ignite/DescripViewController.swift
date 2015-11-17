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
    
    @IBOutlet weak var placeholderTextField: UITextField!
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.descripTextImageView.alpha = 0
        self.statusImageView.alpha = 0
        
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

    @IBAction func onTapTextField(sender: AnyObject) {
        
        self.descripTextImageView.alpha = 1
        
        placeholderTextField.endEditing(true)
        
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }
    
    @IBAction func onTapStatus(sender: AnyObject) {
        
        self.statusImageView.alpha = 1
        
        nextButton.enabled = true
        UIView.animateWithDuration(0.3, animations: {
            self.nextButton.backgroundColor = self.UIColorFromRGB(0xFF6400)
        })
        
    }
}
