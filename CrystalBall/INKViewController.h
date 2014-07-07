//
//  INKViewController.h
//  CrystalBall
//
//  Created by Michael Woodcock on 4/14/14.
//  Copyright (c) 2014 Ink Squared, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class INKCrystalBall;

@interface INKViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) INKCrystalBall *crystalBall;
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;

- (void) makePrediction;

@end
