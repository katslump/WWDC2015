//
//  HonorsViewController.swift
//  KatSlump
//
//  Created by Kat Slump on 4/20/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

import UIKit

class HonorsViewController: UIViewController {

    @IBAction func resumeButton(sender: AnyObject) {
    
    UIApplication.sharedApplication().openURL(NSURL(string: "http://www.katslump.com/uploads/1/1/7/2/1172891/katslumpnewresumev3.pdf")!)
    
    }
    @IBOutlet var giftIcon: UIImageView!
    
    @IBAction func githubLink(sender: AnyObject) {
           UIApplication.sharedApplication().openURL(NSURL(string: "      https://github.com/katslump")!)
  
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
/*
        // Do any additional setup after loading the view.
        self.giftIcon.layer.cornerRadius = self.giftIcon.frame.size.width / 2;
        self.giftIcon.clipsToBounds = true
        
        var newColor = UIColor.whiteColor().CGColor
        
        
        self.giftIcon.layer.borderWidth = 3.0
        self.giftIcon.layer.borderColor = newColor
        self.giftIcon.layer.cornerRadius = 10.0
        
        */
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
