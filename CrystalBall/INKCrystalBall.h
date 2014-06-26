//
//  INKCrystalBall.h
//  CrystalBall
//
//  Created by Michael Woodcock on 5/9/14.
//  Copyright (c) 2014 Ink Squared, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface INKCrystalBall : NSObject {
    NSArray *_predictions;
}

- (NSString*) randomPrediction;

@property (strong, nonatomic, readonly) NSArray *predictions;

@end
