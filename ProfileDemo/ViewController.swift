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
	
   
    @IBOutlet var WWDCimage: UIImageView!
    let duration = 2.0
    let delay = 1.0
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
		// Do any additional setup after loading the view, typically from a 
        
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
            TimeFrame(text: "The NCWIT Award for Aspirations in Computing honors young women at the high-school level for their computing-related achievements and interests. Awardees are selected for their computing and IT aptitude, leadership ability, academic history, and plans for post-secondary education.\n", date: "NCWIT Award of Aspirations in Computing Award 2012", image: UIImage(named: "NCWIT.png")),
            TimeFrame(text: "I was 1 of 22 selected to attend Square's College Code Camp in January 2015. There were hundreds of applicants across North America. I was the first woman to be selected to attend from Nebraska. \n\nThose selected won a trip to Square's San Francisco headquarters to participate in a five-day immersion program, where they attended coding workshops, leadership sessions, and tour San Francisco—all while surrounded by top women engineers from across the U.S. and Canada.\n",date: "Square College Code Camp Selectee 2015", image: UIImage(named: "jack.png")),
            TimeFrame(text: "3rd place\nI was on the team of ~Haus~ while at Startup Weekend Nebraska. our team placed 3rd in the competition. I served as both a designer and front-end developer during the competition.\n", date: "Startup Weekend", image: UIImage(named: "SW.png")),
			TimeFrame(text: "1st place\nOur team at V.J. & Angela Skutt Catholic High School won the IT Innovation Cup, a competition for high school students that focuses on creativity, innovation and technology. Participants in the 2012- 2013 competition were to create a mobile application that would teach its user something. The team collaborated and created The Calorie Gallery. I served as leader and developer for the team.", date: "IT Innovation Cup", image: UIImage(named: "ITCup.jpg")),
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

