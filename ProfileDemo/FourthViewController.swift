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
    
    
    var scrollView: UIScrollView!
    var timeline:   TimelineView!
    
    var frame: CGRect = CGRectMake(0, 0, 0, 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 

        // Do any additional setup after loading the view.
        
        
        self.coffeeIcon.layer.cornerRadius = self.coffeeIcon.frame.size.width / 2;
        self.coffeeIcon.clipsToBounds = true
        
        var newColor = UIColor.whiteColor().CGColor
        
        
        self.coffeeIcon.layer.borderWidth = 3.0
        self.coffeeIcon.layer.borderColor = newColor
        self.coffeeIcon.layer.cornerRadius = 10.0
        // Do any additional setup after loading the view, typically from a nib.
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addSubview(scrollView)
         self.scrollView.showsVerticalScrollIndicator = false
        
        view.addConstraints([
            NSLayoutConstraint(item: scrollView, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: scrollView, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 35),
            NSLayoutConstraint(item: scrollView, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: -15),
            NSLayoutConstraint(item: scrollView, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
            ])
        
       	
        timeline = TimelineView(bulletType: .Arrow, timeFrames: [
          
            TimeFrame(text: "A social media app that uses image recgonition to detect logos of brands in images, tags and further tracks the brand, and sends the tweet to Twitter.", date: "Brand Detect (2015)", image: nil),
            TimeFrame(text: "A simplified laundry alert app for shared spaces (dorms, apartments, etc.) soon to be integrated with a wireless sensor called Notion.",date: "DiviLert (2015)", image:UIImage(named: "BD2.jpg")),
            TimeFrame(text: "An educational game for children about health & nutrition that tests the player's knowledge of the calorie amounts in food and physical activities.", date: "The Calorie Gallery (2013)", image: UIImage(named: "DiviAppIcon.jpg")),
            TimeFrame(text: "A mobile game created to test the user's ability to pop balloons while dodging a listed color.", date: "Pop & Dodge. (2013)", image: UIImage(named: "CalorieGallery.png")),
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

