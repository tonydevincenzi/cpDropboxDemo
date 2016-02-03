//
//  OnboardingViewController.swift
//  cpDropboxDemo
//
//  Created by Anthony Devincenzi on 2/2/16.
//  Copyright © 2016 Anthony Devincenzi. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var onboardingScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        onboardingScrollView.contentSize = CGSize(width:960, height:568)

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
