//
//  HonorsViewController.swift
//  KatSlump
//
//  Created by Kat Slump on 4/20/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

import UIKit

class HonorsViewController: UIViewController {

    @IBOutlet var WWDCimage: UIImageView!
    //WWDC image declaration
    
    @IBOutlet var giftIcon: UIImageView!
    //gift icon declaration
   
    let duration = 2.0
    //2 seconds long
    let delay = 1.0
    //1 second delay
    let options = UIViewKeyframeAnimationOptions.CalculationModeLinear
    
    @IBAction func resumeButton(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://www.katslump.com/uploads/1/1/7/2/1172891/katslumpnewresumev3.pdf")!)
        //sends user to url when 'Resume PDF' selected
    }
    
    @IBAction func githubLink(sender: AnyObject) {
           UIApplication.sharedApplication().openURL(NSURL(string: "      https://github.com/katslump")!)
        //sends user to url when GitHub icon selected
    }
    
    
    override func viewDidAppear(animated: Bool) {
        self.view.addSubview(WWDCimage)
        //adds WWDC to subview
        
        // angles in iOS are measured as radians PI is 180 degrees so PI × 2 is 360 degrees
        let fullRotation = CGFloat(M_PI * 2)
        
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: options, animations: {
            // each keyframe needs to be added here
            // within each keyframe the relativeStartTime and relativeDuration need to be values between 0.0 and 1.0
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 1/3, animations: {
                // start at 0.00s (5s × 0)
                // duration 1.67s (5s × 1/3)
                // end at   1.67s (0.00s + 1.67s)
                self.WWDCimage.transform = CGAffineTransformMakeRotation(1/3 * fullRotation)
                self.WWDCimage.alpha=1;
            })
            UIView.addKeyframeWithRelativeStartTime(1/3, relativeDuration: 1/3, animations: {
                self.WWDCimage.transform = CGAffineTransformMakeRotation(2/3 * fullRotation)
            })
            UIView.addKeyframeWithRelativeStartTime(2/3, relativeDuration: 1/3, animations: {
                self.WWDCimage.transform = CGAffineTransformMakeRotation(3/3 * fullRotation)
            })
            
            }, completion: {finished in
                // any code entered here will be applied
                // once the animation has completed
        })
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
