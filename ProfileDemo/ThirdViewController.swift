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
    
    var scrollView: UIScrollView!
    var timeline:   TimelineView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.mapIcon.layer.cornerRadius = self.mapIcon.frame.size.width / 2;
        self.mapIcon.clipsToBounds = true
        
        var newColor = UIColor.whiteColor().CGColor
        
        
        self.mapIcon.layer.borderWidth = 3.0
        self.mapIcon.layer.borderColor = newColor
        self.mapIcon.layer.cornerRadius = 10.0
        
        // Do any additional setup after loading the view, typically from a nib.
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addSubview(scrollView)
        
        view.addConstraints([
            NSLayoutConstraint(item: scrollView, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: scrollView, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 29),
            NSLayoutConstraint(item: scrollView, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: scrollView, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
            ])
        
       	
        timeline = TimelineView(bulletType: .Diamond, timeFrames: [
            TimeFrame(text: "Awardees have had contribution toward addressing improving the status of women or gender issues at UNO in their academic work or activities, and/or have academic excellence in fields where women are underrepresented.", date: "Chancellor's Commission on the Status of Women Scholarship", image: nil),
            TimeFrame(text: "Responsible for club outreach, marketing materials, and design. Helped recruitment go from 16 to 64 by the end of the semester via reaching out to the College of IS&T and friends. Awarded Marketing Club of the Year at CEO Nationals in Orlando, FL (Fall 2014).",date: "Chief Marketing Officer of UNO's Collegiate Entrepreneurial Organization", image: UIImage(named: "square.png")),
            TimeFrame(text: "Helps the College of IS&T in any way possible on its women in tech initiative. Has gone to middle schools and high schools to recruit students, talked on tech panels, and become a Women in IT Engagement Link member (youngest member).", date: "Women in Tech Ambassador", image: nil),
        
            
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

