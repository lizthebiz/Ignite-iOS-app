//
//  loginViewController.swift
//  IgniteSections
//
//  Created by Anna Smalley on 11/10/15.
//  Copyright © 2015 Anna Smalley. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var loginParentView: UIView!
    
    @IBOutlet weak var login2ParentView: UIView!
    
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var flameCoverView: UIView!
    
    @IBOutlet weak var soloFlame: UIImageView!
    
    @IBOutlet weak var loginActivityIndicator: UIActivityIndicatorView!
    
    @IBOutlet weak var hideLoginText: UIView!
    
    var initialY: CGFloat!
    let offset: CGFloat = -150
    
    var initialFlameY: CGFloat!
    let offsetFlame: CGFloat = -175
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        initialY = login2ParentView.frame.origin.y
        initialFlameY = soloFlame.frame.origin.y
        
        hideLoginText.alpha = 0
        
       
    

        
 
        
        // Do any additional setup after loading the view.
    }
    
    func keyboardWillShow(notification: NSNotification!) {
        
        login2ParentView.frame.origin.y = initialY + offset
        
        soloFlame.frame.origin.y = initialFlameY + offsetFlame
        
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
       
        login2ParentView.frame.origin.y = initialY
        
        soloFlame.frame.origin.y = initialFlameY
        
    }
    
    
    @IBAction func onTapOut(sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
        
        UIView.animateWithDuration(0.4, animations: { () -> Void in
           
            self.flameCoverView.alpha = 0
                })
      
        
        UIView.animateWithDuration(0.4, delay: 0.4, options: [], animations: { () -> Void in
            self.flameCoverView.alpha = 0
            }) { (Bool) -> Void in
                []
        }
    }

    @IBAction func onTapOut2(sender: UITapGestureRecognizer) {
        
        view.endEditing(true)
        
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            
           
            
        })
        
        

        self.loginActivityIndicator.stopAnimating()
        
        hideLoginText.alpha = 0
        
        
        
    }
    @IBAction func onTapLogin(sender: AnyObject) {
        
        hideLoginText.alpha = 1
        
        self.loginActivityIndicator.startAnimating()
        
        delay(3){
            
            self.loginActivityIndicator.stopAnimating()
            
            self.performSegueWithIdentifier("loginSegue", sender: nil)}
      
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
