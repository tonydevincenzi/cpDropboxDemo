//
//  SignInSignUpViewController.swift
//  cpDropboxDemo
//
//  Created by Anthony Devincenzi on 2/3/16.
//  Copyright © 2016 Anthony Devincenzi. All rights reserved.
//

import UIKit

class SignInSignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        performSegueWithIdentifier("showSignIn", sender: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
