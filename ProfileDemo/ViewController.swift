//
//  ViewController.swift
//  Timeline
//
//  Created by Evan Dekhayser on 7/26/14.
//  Copyright (c) 2014 Evan Dekhayser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
    @IBOutlet var crownImage: UIImageView!
	var scrollView: UIScrollView!
    var timeline:   TimelineView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
        
        self.crownImage.layer.cornerRadius = self.crownImage.frame.size.width / 2
        self.crownImage.clipsToBounds = true
        
        var newColor = UIColor.whiteColor().CGColor
        
        self.crownImage.layer.borderWidth = 3.0
        self.crownImage.layer.borderColor = newColor
        
        self.crownImage.layer.cornerRadius = 10.0
        // Do any additional setup after loading the view.
        
        self.view.addSubview(crownImage)

		scrollView = UIScrollView(frame: view.bounds)
		scrollView.setTranslatesAutoresizingMaskIntoConstraints(false)
		view.addSubview(scrollView)
         self.scrollView.showsVerticalScrollIndicator = false
		
		view.addConstraints([
			NSLayoutConstraint(item: scrollView, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 0),
			NSLayoutConstraint(item: scrollView, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 29),
			NSLayoutConstraint(item: scrollView, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: -15),
			NSLayoutConstraint(item: scrollView, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
			])
		
		timeline = TimelineView(bulletType: .Circle, timeFrames: [
            TimeFrame(text: "?", date: "NCWIT Award of Aspirations in Computing Award", image: UIImage(named: "NCWITlogo_square.jpg")),
			TimeFrame(text: "?",date: "Square College Code Camp Selectee 2015", image: UIImage(named: "square.png")),
			TimeFrame(text: "3rd place", date: "Startup Weekend", image: UIImage(named: "SW.png")),
			TimeFrame(text: "1st place", date: "IT Innovation Cup", image: UIImage(named: "ITCup.jpg")),
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

