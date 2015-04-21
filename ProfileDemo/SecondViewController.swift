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
    var timeline:   TimelineView!
    let screenSize:CGRect = UIScreen.mainScreen().bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.iconHolder.layer.cornerRadius = self.iconHolder.frame.size.width / 2;
        self.iconHolder.clipsToBounds = true
      
       var newColor = UIColor.whiteColor().CGColor
      
        
        self.iconHolder.layer.borderWidth = 3.0
        self.iconHolder.layer.borderColor = newColor
        self.iconHolder.layer.cornerRadius = 10.0

        // Do any additional setup after loading the view, typically from a nib.
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.frame.size.width = screenSize.width * 0.30
        view.addSubview(scrollView)
         self.scrollView.showsVerticalScrollIndicator = false
        
        view.addConstraints([
            NSLayoutConstraint(item: scrollView, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: scrollView, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 30),
            NSLayoutConstraint(item: scrollView, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: -15),
            NSLayoutConstraint(item: scrollView, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: -20)
            ])
        
       	
        timeline = TimelineView(bulletType: .Circle, timeFrames: [
            TimeFrame(text: "Software Development Intern \n\n Flywheel's mission is to improve the lives of the millions of web designers & developers worldwide that build sites on the WordPress platform. \n\n As a Software Development Intern, I will be creating internal tools to help their Support Engineers (Happiness Engineers) do their job better using Ruby.", date: "Flywheel (Summer 2015)", image: UIImage(named: "flywheel.png")),
            TimeFrame(text: "College Code Camp Selectee \n\nThose selected win a trip to Square's San Francisco headquarters to participate in a five-day immersion program, where they attend coding workshops, leadership sessions, and tour San Francisco—all while surrounded by top women engineers from across the U.S. and Canada. \n\n -Created a prototype of an iOS application to help Children International's Bay Area chapter connect with the younger generation and increase commitment.",date: "Square (January 2015)", image: UIImage(named: "square1.jpg")),
            TimeFrame(text: "Social Engagement Strategist \n\n Interface is a local code school turning clueless techies into full-stack developers in just 10-15 weeeks.\n\n As the Social Engagement Strategist I am responsible for class recruitment & raising overall brand awareness of the startup, as well as creating weekly social media posts marketing Interface.\n\n -First National Bank Web Development Partnership: +20% gain of interest due to efforts. \n -Overall huge jump in brand awareness and respect\n", date: "Interface Web School (August 2014 - present)", image: UIImage(named: "interface.png")),
           
            
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
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
}

