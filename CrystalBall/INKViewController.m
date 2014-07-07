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
    self.backgroundImageView.animationImages = [[NSArray alloc] initWithObjects:
                                                [UIImage imageNamed:@"CB0001"],
                                                [UIImage imageNamed:@"CB0002"],
                                                [UIImage imageNamed:@"CB0003"],
                                                [UIImage imageNamed:@"CB0004"],
                                                [UIImage imageNamed:@"CB0005"],
                                                [UIImage imageNamed:@"CB0006"],
                                                [UIImage imageNamed:@"CB0007"],
                                                [UIImage imageNamed:@"CB0008"],
                                                [UIImage imageNamed:@"CB0009"],
                                                [UIImage imageNamed:@"CB0010"],
                                                [UIImage imageNamed:@"CB0011"],
                                                [UIImage imageNamed:@"CB0012"],
                                                [UIImage imageNamed:@"CB0013"],
                                                [UIImage imageNamed:@"CB0014"],
                                                [UIImage imageNamed:@"CB0015"],
                                                [UIImage imageNamed:@"CB0016"],
                                                [UIImage imageNamed:@"CB0017"],
                                                [UIImage imageNamed:@"CB0018"],
                                                [UIImage imageNamed:@"CB0019"],
                                                [UIImage imageNamed:@"CB0020"],
                                                [UIImage imageNamed:@"CB0021"],
                                                [UIImage imageNamed:@"CB0022"],
                                                [UIImage imageNamed:@"CB0023"],
                                                [UIImage imageNamed:@"CB0024"],
                                                [UIImage imageNamed:@"CB0025"],
                                                [UIImage imageNamed:@"CB0026"],
                                                [UIImage imageNamed:@"CB0027"],
                                                [UIImage imageNamed:@"CB0028"],
                                                [UIImage imageNamed:@"CB0029"],
                                                [UIImage imageNamed:@"CB0030"],
                                                [UIImage imageNamed:@"CB0031"],
                                                [UIImage imageNamed:@"CB0032"],
                                                [UIImage imageNamed:@"CB0033"],
                                                [UIImage imageNamed:@"CB0034"],
                                                [UIImage imageNamed:@"CB0035"],
                                                [UIImage imageNamed:@"CB0036"],
                                                [UIImage imageNamed:@"CB0037"],
                                                [UIImage imageNamed:@"CB0038"],
                                                [UIImage imageNamed:@"CB0039"],
                                                [UIImage imageNamed:@"CB0040"],
                                                [UIImage imageNamed:@"CB0041"],
                                                [UIImage imageNamed:@"CB0042"],
                                                [UIImage imageNamed:@"CB0043"],
                                                [UIImage imageNamed:@"CB0044"],
                                                [UIImage imageNamed:@"CB0045"],
                                                [UIImage imageNamed:@"CB0046"],
                                                [UIImage imageNamed:@"CB0047"],
                                                [UIImage imageNamed:@"CB0048"],
                                                [UIImage imageNamed:@"CB0049"],
                                                [UIImage imageNamed:@"CB0050"],
                                                [UIImage imageNamed:@"CB0051"],
                                                [UIImage imageNamed:@"CB0052"],
                                                [UIImage imageNamed:@"CB0053"],
                                                [UIImage imageNamed:@"CB0054"],
                                                [UIImage imageNamed:@"CB0055"],
                                                [UIImage imageNamed:@"CB0056"],
                                                [UIImage imageNamed:@"CB0057"],
                                                [UIImage imageNamed:@"CB0058"],
                                                [UIImage imageNamed:@"CB0059"],
                                                [UIImage imageNamed:@"CB0060"], nil];
    self.backgroundImageView.animationDuration = 2.5f;
    self.backgroundImageView.animationRepeatCount = 1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Prediction
- (void) makePrediction {
    [self.backgroundImageView startAnimating];
    self.predictionLabel.text = [self.crystalBall randomPrediction];
}

#pragma mark - Motion Event

-(void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
}

-(void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    if(UIEventSubtypeMotionShake) {
     [self makePrediction];   
    }
}

#pragma mark - Touch Event

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.predictionLabel.text = nil;
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    [self makePrediction];
}

@end