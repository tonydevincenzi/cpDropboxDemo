//
//  SignUpAuthViewController.swift
//  cpDropboxDemo
//
//  Created by Anthony Devincenzi on 2/3/16.
//  Copyright © 2016 Anthony Devincenzi. All rights reserved.
//

import UIKit

class SignUpAuthViewController: UIViewController {

    @IBOutlet weak var fieldsContainerView: UIView!
    @IBOutlet weak var bottomShadowView: UIView!
    @IBOutlet weak var passwordStrengthView: UIView!
    @IBOutlet weak var passwordStrengthLabel: UILabel!
    
    @IBOutlet weak var passwordBarTwo: UIView!
    @IBOutlet weak var passwordBarThree: UIView!
    @IBOutlet weak var passwordBarFour: UIView!
    
    @IBOutlet weak var createButton: UIBarButtonItem!
    
    
    
    var passwordCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showActionSheet(sender: AnyObject) {
        let optionMenu = UIAlertController(title: nil, message: "Before you can complete your registration, you must accept the Dropbox Terms of Service", preferredStyle: .ActionSheet)
        
        let passwordOption = UIAlertAction(title: "I Agree", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.performSegueWithIdentifier("createAccountSegue", sender: sender)
        })
        let ssonAction = UIAlertAction(title: "View Terms", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.performSegueWithIdentifier("viewTermsSegue", sender: sender)
        })
        
        optionMenu.addAction(passwordOption)
        optionMenu.addAction(ssonAction)
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
    }
    
    @IBAction func onPasswordChange(sender: AnyObject) {
        fieldsContainerView.frame.size.height = 206 //176 start
        bottomShadowView.frame.origin.y = 286
        passwordStrengthView.hidden = false
        createButton.enabled = true
        
        passwordCount++
        if(passwordCount > 4) {
            passwordStrengthLabel.text = "So-so"
            passwordStrengthLabel.textColor = UIColor.orangeColor()
            passwordBarTwo.alpha = 1
            passwordBarTwo.backgroundColor = UIColor.orangeColor()
        }
        if (passwordCount > 6) {
            passwordStrengthLabel.text = "Good"
            passwordStrengthLabel.textColor = UIColor.yellowColor()
            passwordBarThree.alpha = 1
            passwordBarThree.backgroundColor = UIColor.yellowColor()
        }
        if (passwordCount > 8) {
            passwordStrengthLabel.text = "Great"
            passwordStrengthLabel.textColor = UIColor.greenColor()
            passwordBarFour.alpha = 1
            passwordBarFour.backgroundColor = UIColor.greenColor()
        }
    }

}
