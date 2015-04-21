//
//  ProfileViewController.m
//  ProfileDemo
//
//  Created by Simon on 30/3/14.
//  Copyright (c) 2014 Appcoda. All rights reserved.
//

#import "ProfileViewController.h"



@interface ProfileViewController ()

@end


@implementation ProfileViewController

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
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2;
    self.profileImageView.clipsToBounds = YES;
    
    self.profileImageView.layer.borderWidth = 3.0f;
    self.profileImageView.layer.borderColor = [UIColor whiteColor].CGColor;
    
    self.profileImageView.layer.cornerRadius = 10.0f;


    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
