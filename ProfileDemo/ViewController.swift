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
        /*
        self.crownImage.layer.cornerRadius = self.crownImage.frame.size.width / 2
        self.crownImage.clipsToBounds = true
        
        var newColor = UIColor.whiteColor().CGColor
        
        self.crownImage.layer.borderWidth = 3.0
        self.crownImage.layer.borderColor = newColor
        
        self.crownImage.layer.cornerRadius = 10.0
        // Do any additional setup after loading the view.

        self.view.addSubview(crownImage)
*/
        
		scrollView = UIScrollView(frame: view.bounds)
		scrollView.setTranslatesAutoresizingMaskIntoConstraints(false)
		view.addSubview(scrollView)
         self.scrollView.showsVerticalScrollIndicator = false
        self.scrollView.showsHorizontalScrollIndicator = false
		
		view.addConstraints([
			NSLayoutConstraint(item: scrollView, attribute: .Left, relatedBy: .Equal, toItem: view, attribute: .Left, multiplier: 1.0, constant: 0),
			NSLayoutConstraint(item: scrollView, attribute: .Top, relatedBy: .Equal, toItem: view, attribute: .Top, multiplier: 1.0, constant: 5),
			NSLayoutConstraint(item: scrollView, attribute: .Right, relatedBy: .Equal, toItem: view, attribute: .Right, multiplier: 1.0, constant: -15),
			NSLayoutConstraint(item: scrollView, attribute: .Bottom, relatedBy: .Equal, toItem: view, attribute: .Bottom, multiplier: 1.0, constant: 0)
			])
		
		timeline = TimelineView(bulletType: .Carrot, timeFrames: [
            TimeFrame(text: "The NCWIT Award for Aspirations in Computing honors young women at the high-school level for their computing-related achievements and interests. Awardees are selected for their computing and IT aptitude, leadership ability, academic history, and plans for post-secondary education.\n", date: "NCWIT Award of Aspirations in Computing Award", image: UIImage(named: "NCWIT.png")),
            TimeFrame(text: "Was 1 of 20 selected to attend Square's College Code Camp in January 2015. There were hundreds of applicants across North America. I was the first woman to be selected to attend from Nebraska. \n\nThose selected win a trip to Square's San Francisco headquarters to participate in a five-day immersion program, where they attend coding workshops, leadership sessions, and tour San Francisco—all while surrounded by top women engineers from across the U.S. and Canada.\n",date: "Square College Code Camp Selectee 2015", image: UIImage(named: "jack.png")),
            TimeFrame(text: "3rd place\nI was on the team of ~Haus~ while at Startup Weekend Nebraska where we placed 3rd in the competition. I served as both a designer and front-end developer.\n", date: "Startup Weekend", image: UIImage(named: "SW.png")),
			TimeFrame(text: "1st place\nOur team at V.J. & Angela Skutt Catholic High School won the IT Innovation Cup, a competition for high school students that focuses on creativity, innovation and technology. Participants in the 2012- 2013 competition were to create a mobile application that would teach its user something. The team collaborated and created The Calorie Gallery.", date: "IT Innovation Cup", image: UIImage(named: "ITCup.jpg")),
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

