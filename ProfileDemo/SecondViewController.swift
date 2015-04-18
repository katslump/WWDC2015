//
//  SecondViewController.swift
//  ProfileDemo
//
//  Created by Kat Slump on 4/18/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var iconHolder: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.iconHolder.layer.cornerRadius = self.iconHolder.frame.size.width / 2;
        self.iconHolder.clipsToBounds = true
      
       var newColor = UIColor.whiteColor().CGColor
      
        
        self.iconHolder.layer.borderWidth = 3.0
        self.iconHolder.layer.borderColor = newColor
        self.iconHolder.layer.cornerRadius = 10.0

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
