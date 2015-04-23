//
//  FourthViewController.swift
//  ProfileDemo
//
//  Created by Kat Slump on 4/18/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

   
    
    @IBAction func diviButton(sender: AnyObject) {
           UIApplication.sharedApplication().openURL(NSURL(string: "http://invis.io/GZ2RC0G2B")!)
    }
    @IBAction func brandButton(sender: AnyObject) {
           UIApplication.sharedApplication().openURL(NSURL(string: "https://github.com/katslump/iOSbrandDetect")!)
    }
   
    @IBAction func calorieButton(sender: AnyObject) {
           UIApplication.sharedApplication().openURL(NSURL(string: "https://itunes.apple.com/us/app/the-calorie-gallery/id627204847?mt=8")!)
    }
    
    @IBAction func popButton(sender: AnyObject) {
           UIApplication.sharedApplication().openURL(NSURL(string: "https://itunes.apple.com/us/app/pop-dodge./id679965280?mt=8")!)
    }
    
    @IBOutlet var coffeeIcon: UIImageView!
    var frame: CGRect = CGRectMake(0, 0, 0, 0)
 
    
    var scrollView: UIScrollView!
    var timeline:   TimelineView!
    
    @IBOutlet var wwcdImage: UIImageView!
    let duration = 2.0
    let delay = 1.0
    let options = UIViewKeyframeAnimationOptions.CalculationModeLinear
    
    override func viewDidAppear(animated: Bool) {
        self.view.addSubview(wwcdImage)
        
        // angles in iOS are measured as radians PI is 180 degrees so PI × 2 is 360 degrees
        let fullRotation = CGFloat(M_PI * 2)
        
        UIView.animateKeyframesWithDuration(duration, delay: delay, options: options, animations: {
            // each keyframe needs to be added here
            // within each keyframe the relativeStartTime and relativeDuration need to be values between 0.0 and 1.0
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 1/3, animations: {
                // start at 0.00s (5s × 0)
                // duration 1.67s (5s × 1/3)
                // end at   1.67s (0.00s + 1.67s)
                self.wwcdImage.transform = CGAffineTransformMakeRotation(1/3 * fullRotation)
                self.wwcdImage.alpha=1;
            })
            UIView.addKeyframeWithRelativeStartTime(1/3, relativeDuration: 1/3, animations: {
                self.wwcdImage.transform = CGAffineTransformMakeRotation(2/3 * fullRotation)
            })
            UIView.addKeyframeWithRelativeStartTime(2/3, relativeDuration: 1/3, animations: {
                self.wwcdImage.transform = CGAffineTransformMakeRotation(3/3 * fullRotation)
            })
            
            }, completion: {finished in
                // any code entered here will be applied
                // once the animation has completed
                
                
                
        })

    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addSubview(scrollView)
         self.scrollView.showsVerticalScrollIndicator = false
        
        view.addConstraints([
            NSLayoutConstraint(item: scrollView, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: scrollView, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 5),
            NSLayoutConstraint(item: scrollView, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: -15),
            NSLayoutConstraint(item: scrollView, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
            ])
        
       	
        timeline = TimelineView(bulletType: .Arrow, timeFrames: [
          
            TimeFrame(text: "A social media app that uses image recognition to detect the logos of brands in images, then tags and tracks the brand in social media posts. Available on GitHub.", date: "Brand Detect (2015)", image: nil),
            TimeFrame(text: "A simplified laundry alert app mockup for shared spaces (dorms, apartments, etc.) soon to be integrated with a wireless sensor called Notion.",date: "DiviLert (2015)", image:UIImage(named: "BD2.jpg")),
            TimeFrame(text: "An educational iPad game made for children to teach them about health & nutrition. The game tests the player's knowledge of the calorie amounts in foods and the amount burned through physical activities. Available on the App Store.", date: "The Calorie Gallery (2013)", image: UIImage(named: "DiviAppIcon.jpg")),
            TimeFrame(text: "A mobile game created to test the user's ability to pop balloons while dodging a listed color. Available on the App Store.", date: "Pop & Dodge. (2013)", image: UIImage(named: "CalorieGallery.png")),
            TimeFrame(text: " ", date: " ", image: UIImage(named: "PopDodge.png")),
            
            
            ])
        scrollView.addSubview(timeline)
        scrollView.addConstraints([
            NSLayoutConstraint(item: timeline, attribute: .Left, relatedBy: .Equal, toItem: scrollView, attribute: .Left, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: timeline, attribute: .Bottom, relatedBy: .LessThanOrEqual, toItem: scrollView, attribute: .Bottom, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: timeline, attribute: .Top, relatedBy: .Equal, toItem: scrollView, attribute: .Top, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: timeline, attribute: .Right, relatedBy: .Equal, toItem: scrollView, attribute: .Right, multiplier: 1.0, constant: 0),
            
            NSLayoutConstraint(item: timeline, attribute: .Width, relatedBy: .Equal, toItem: scrollView, attribute: .Width, multiplier: 1.0, constant: 0)
            ])
        
        view.sendSubviewToBack(scrollView)
    }
  
    
    @IBAction func bulletChanged(sender: UISegmentedControl) {
        timeline.bulletType = [BulletType.Circle, BulletType.Hexagon, BulletType.Diamond, BulletType.DiamondSlash, BulletType.Carrot, BulletType.Arrow][sender.selectedSegmentIndex]
    }
    
  
    
    
}

