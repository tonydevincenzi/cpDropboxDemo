//
//  FilesTabViewController.swift
//  cpDropboxDemo
//
//  Created by Anthony Devincenzi on 2/5/16.
//  Copyright © 2016 Anthony Devincenzi. All rights reserved.
//

import UIKit

class FilesTabViewController: UIViewController {
    
    
    @IBOutlet weak var favoriteIMage: UIImageView!

    @IBAction func overflowButton(sender: AnyObject) {
        
        let optionMenu = UIAlertController(title: "Space.jpg", message: nil, preferredStyle: .ActionSheet)
        
        let passwordOption = UIAlertAction(title: "Send Link", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        let ssonAction = UIAlertAction(title: "Favorite", style: .Default, handler: {
            (alert: UIAlertAction!) -> Void in
            print("Favorite!")
            self.favoriteIMage.hidden = false
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        
        optionMenu.addAction(passwordOption)
        optionMenu.addAction(ssonAction)
        optionMenu.addAction(cancelAction)
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
