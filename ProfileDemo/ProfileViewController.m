//
//  ProfileViewController.m
//  ProfileDemo
//
//  Created by Simon on 30/3/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "ProfileViewController.h"
#import "ProfileDemo-Bridging-Header.h"


@interface ProfileViewController ()

@end

@implementation ProfileViewController

@synthesize WWDCimage;

- (IBAction)twitterButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/katslump"]];
}


- (IBAction)facebookButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.facebook.com/kat.slump"]];
}

- (IBAction)instagramButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://instagram.com/katslump"]];
}
- (IBAction)linkedinButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://www.linkedin.com/pub/katherine-slump/79/327/459"]];
}
- (IBAction)gitHubButton:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://github.com/katslump"]];
    
}



-(IBAction)unwindToMainViewController: (UIStoryboardSegue *)segue{
    // bug? exit segue doesn't dismiss so we do it manually...
  
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2;
    self.profileImageView.clipsToBounds = YES;
    
    self.profileImageView.layer.borderWidth = 3.0f;
    self.profileImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    
    self.profileImageView.layer.cornerRadius = 10.0f;

    
    [self.view addSubview:WWDCimage];
    
    #define SPIN_CLOCK_WISE 1
    #define SPIN_COUNTERCLOCK_WISE -1
    

    [self spinLayer:WWDCimage.layer duration:2 direction:SPIN_CLOCK_WISE delay:1];
 
    

    
}



- (void)spinLayer:(CALayer *)inLayer duration:(CFTimeInterval)inDuration
        direction:(int)direction delay:(int)delay
{
    CABasicAnimation* rotationAnimation;
    
    // Rotate about the z axis
    rotationAnimation =
    [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    
    // Rotate 360 degress, in direction specified
    rotationAnimation.toValue = [NSNumber numberWithFloat: M_PI * 2.0 * direction];
    
    // Perform the rotation over this many seconds
    rotationAnimation.duration = 2;
    
    
    //Perform the rotation after 2 seconds
[rotationAnimation setBeginTime:CACurrentMediaTime()+2.0];

    
    // Set the pacing of the animation
    rotationAnimation.timingFunction =
    [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    // Add animation to the layer and make it so
    [inLayer addAnimation:rotationAnimation forKey:@"rotationAnimation"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
