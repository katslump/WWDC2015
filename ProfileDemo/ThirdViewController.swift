//
//  ThirdViewController.swift
//  ProfileDemo
//
//  Created by Kat Slump on 4/18/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var mapIcon: UIImageView!
    
    @IBOutlet var WWDCimage: UIImageView!
    let duration = 2.0
    let delay = 1.0
    let options = UIViewKeyframeAnimationOptions.CalculationModeLinear
    
    var scrollView: UIScrollView!
    var timeline:   TimelineView!
    let screenSize:CGRect = UIScreen.mainScreen().bounds
    
    
    override func viewDidAppear(animated: Bool) {
        self.view.addSubview(WWDCimage)
        
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
        
        
        // Do any additional setup after loading the view, typically from a nib.
        scrollView = UIScrollView(frame: view.bounds)
            view.frame.size.width = screenSize.width * 0.30
        scrollView.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addSubview(scrollView)
        self.scrollView.showsVerticalScrollIndicator = false
        
        view.addConstraints([
            NSLayoutConstraint(item: scrollView, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: scrollView, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 5),
            NSLayoutConstraint(item: scrollView, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: -15),
            NSLayoutConstraint(item: scrollView, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
            ])
        
       	
        timeline = TimelineView(bulletType: .Diamond, timeFrames: [
            TimeFrame(text: "Awardees have made a contribution toward addressing improving the status of women or gender issues at UNO in their academic work or activities, and/or have academic excellence in fields where women are underrepresented.", date: "Chancellor's Commission on the Status of Women Scholarship", image: nil),
            TimeFrame(text: "Helps the College of IS&T in any way possible in advancing its women in tech initiative. Has gone to middle schools and high schools to recruit students, talked on tech panels, and become a Women in IT Engagement Link member (youngest member).", date: "Women in Tech Ambassador", image: UIImage(named: "chance.png")),
             TimeFrame(text: "Responsible for club outreach, marketing materials, and design. Helped recruitment go from 16 to 64 by the end of the semester via reaching out to the College of IS&T and friends. Awarded Marketing Club of the Year at CEO Nationals in Orlando, FL (Fall 2014).",date: "Chief Marketing Officer of UNO's Collegiate Entrepreneurial Organization", image: UIImage(named: "WomenTech.png")),
             TimeFrame(text: " ", date: " ", image: UIImage(named: "CMO.png")),
        
            
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

    
    
}

