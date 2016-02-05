//
//  TosViewController.swift
//  cpDropboxDemo
//
//  Created by Anthony Devincenzi on 2/3/16.
//  Copyright © 2016 Anthony Devincenzi. All rights reserved.
//

import UIKit

class TosViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func onClick(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
}