//
//  FourthViewController.swift
//  ProfileDemo
//
//  Created by Kat Slump on 4/18/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet var coffeeIcon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        self.coffeeIcon.layer.cornerRadius = self.coffeeIcon.frame.size.width / 2;
        self.coffeeIcon.clipsToBounds = true
        
        var newColor = UIColor.whiteColor().CGColor
        
        
        self.coffeeIcon.layer.borderWidth = 3.0
        self.coffeeIcon.layer.borderColor = newColor
        self.coffeeIcon.layer.cornerRadius = 10.0
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
