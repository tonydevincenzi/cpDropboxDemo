//
//  SignInAuthViewController.swift
//  cpDropboxDemo
//
//  Created by Anthony Devincenzi on 2/3/16.
//  Copyright © 2016 Anthony Devincenzi. All rights reserved.
//

import UIKit

class SignInAuthViewController: UIViewController {
    
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var signInPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signInButton.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func keyboardWillShow(notification: NSNotification!) {
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        signInButton.hidden = false
    }

    @IBAction func showActionSheet(sender: AnyObject) {
        let optionMenu = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)
        
        let passwordOption = UIAlertAction(title: "Forgot Password?", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        let ssonAction = UIAlertAction(title: "Single Sign-On", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        
        optionMenu.addAction(passwordOption)
        optionMenu.addAction(ssonAction)
        optionMenu.addAction(cancelAction)
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
    }
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
        print("tap")
    }

}
