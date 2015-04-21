//
//  MenuViewController.swift
//  KatSlump
//
//  Created by Kat Slump on 4/20/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet var menuPic: UIImageView!


    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.menuPic.layer.cornerRadius = self.menuPic.frame.size.width / 2
        self.menuPic.clipsToBounds = true
        
        var newColor = UIColor.whiteColor().CGColor
        
        self.menuPic.layer.borderWidth = 3.0
        self.menuPic.layer.borderColor = newColor
        
        self.menuPic.layer.cornerRadius = 10.0
        // Do any additional setup after loading the view.
        
        self.view.addSubview(menuPic)
        
    }
    @IBAction func unwindFromViewController(segue:UIStoryboardSegue) {
    
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
