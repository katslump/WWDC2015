//
//  MenuViewController.swift
//  KatSlump
//
//  Created by Kat Slump on 4/20/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    // create instance of our custom transition manager
    let transitionManager = TransitionManager()
    
    let duration = 2.0
    let delay = 1.0
    let options = UIViewKeyframeAnimationOptions.CalculationModeLinear
    
    
    @IBOutlet var coffeeButton: UIButton!
    @IBOutlet var coffeeLabel: UILabel!
    
    @IBOutlet var gemButton: UIButton!
    @IBOutlet var gemLabel: UILabel!
    
    @IBOutlet var mapButton: UIButton!
    @IBOutlet var maplabel: UILabel!
    
    @IBOutlet var crownButton: UIButton!
    @IBOutlet var crownLabel: UILabel!
    
    @IBOutlet var heartButton: UIButton!
    @IBOutlet var heartLabel: UILabel!
    
    @IBOutlet var giftButton: UIButton!
    @IBOutlet var giftLabel: UILabel!
    
    
    
    
    
    
    @IBOutlet var WCDCimage: UIImageView!
    
    @IBAction func websiteLink(sender: AnyObject) {
         UIApplication.sharedApplication().openURL(NSURL(string: "http://www.katslump.com/")!)
        
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.transitioningDelegate = self.transitionManager
        
        self.view.addSubview(WCDCimage)
        
        // angles in iOS are measured as radians PI is 180 degrees so PI × 2 is 360 degrees
        let fullRotation = CGFloat(M_PI * 2)
        
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: options, animations: {
            // each keyframe needs to be added here
            // within each keyframe the relativeStartTime and relativeDuration need to be values between 0.0 and 1.0
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 1/3, animations: {
                // start at 0.00s (5s × 0)
                // duration 1.67s (5s × 1/3)
                // end at   1.67s (0.00s + 1.67s)
                self.WCDCimage.transform = CGAffineTransformMakeRotation(1/3 * fullRotation)
                self.WCDCimage.alpha=1;
            })
            UIView.addKeyframeWithRelativeStartTime(1/3, relativeDuration: 1/3, animations: {
                self.WCDCimage.transform = CGAffineTransformMakeRotation(2/3 * fullRotation)
            })
            UIView.addKeyframeWithRelativeStartTime(2/3, relativeDuration: 1/3, animations: {
                self.WCDCimage.transform = CGAffineTransformMakeRotation(3/3 * fullRotation)
            })
            
            }, completion: {finished in
                // any code entered here will be applied
                // once the animation has completed
                
                
                
        })
        
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
