//
//  INKViewController.m
//  CrystalBall
//
//  Created by Michael Woodcock on 4/14/14.
//  Copyright (c) 2014 Ink Squared, LLC. All rights reserved.
//

#import "INKViewController.h"
#import "INKCrystalBall.h"

@interface INKViewController ()

@end

@implementation INKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  
    self.crystalBall = [[INKCrystalBall alloc] init];
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
    self.predictionLabel.text = [self.crystalBall randomPrediction];
}

@end