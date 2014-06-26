//
//  INKCrystalBall.m
//  CrystalBall
//
//  Created by Michael Woodcock on 5/9/14.
//  Copyright (c) 2014 Ink Squared, LLC. All rights reserved.
//

#import "INKCrystalBall.h"

@implementation INKCrystalBall

- (NSArray *) predictions {
    if (_predictions == nil) {
        _predictions = [[NSArray alloc] initWithObjects:
                        @"It is Certain",
                        @"It is Decidedly So",
                        @"All Signs Point to Yes",
                        @"My reply is No",
                        @"The Stars are not aligned",
                        @"Unable to Answer Now", nil];
    }
    return _predictions;
}

- (NSString*) randomPrediction {
    int random = arc4random_uniform(self.predictions.count);
    return [self.predictions objectAtIndex:random];
}

@end
