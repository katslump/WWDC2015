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
  
    
    var scrollView: UIScrollView!
    //creates scrollview
    var timeline:   TimelineView!
    //creates timelineview
    let screenSize:CGRect = UIScreen.mainScreen().bounds
    
    
    @IBOutlet var WWDCimage: UIImageView!
    //WWDC image declaration
    let duration = 2.0
    //2 seconds long
    let delay = 1.0
    //1 second delay
    let options = UIViewKeyframeAnimationOptions.CalculationModeLinear
    
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
        scrollView.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.frame.size.width = screenSize.width * 0.30
        view.addSubview(scrollView)
         self.scrollView.showsVerticalScrollIndicator = false
        
        view.addConstraints([
            NSLayoutConstraint(item: scrollView, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: scrollView, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 5),
            NSLayoutConstraint(item: scrollView, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: -15),
            NSLayoutConstraint(item: scrollView, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
            ])
        
       	
        timeline = TimelineView(bulletType: .Circle, timeFrames: [
            TimeFrame(text: "Software Development Intern \n\n Flywheel's mission is to improve the lives of the millions of web designers & developers worldwide that build sites on the WordPress platform. \n\n As a Software Development Intern, I will be creating internal tools to help their Support Engineers (Happiness Engineers) do their job better, using Ruby.", date: "Flywheel (Summer 2015)", image: UIImage(named: "flywheel.png")),
            TimeFrame(text: "College Code Camp Selectee \n\nWhile at Square, I interacted with women from across North America who had aspirations in computing. \n\n During the week, we were split into groups for a hackathon. During the hackathon, our group created a prototype of an iOS application to help Children International's Bay Area chapter connect with the younger generation and increase commitment.",date: "Square (January 2015)", image: UIImage(named: "square1.jpg")),
            TimeFrame(text: "Social Engagement Strategist \n\n Interface is a local code school turning inexperienced techies into full-stack developers in just 10-15 weeeks.\n\n As the Social Engagement Strategist I am responsible for class recruitment & raising overall brand awareness of the startup, as well as creating weekly social media posts marketing Interface.\n\n -First National Bank Web Development Partnership: +20% gain of interest due to efforts. \n -Overall huge jump in brand awareness and respect\n", date: "Interface Web School (August 2014 - present)", image: UIImage(named: "interface.png")),
           
            
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

