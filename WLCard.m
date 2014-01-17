//
//  WLCard.m
//  testbed
//
//  Created by SDT-1 on 2014. 1. 17..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "WLCard.h"

@implementation WLCard



- (void) flipCard {
   // [self.flipTimer invalidate];
    if (self.flipped){
        return;
    }
    
    id animationsBlock = ^{
        self.backView.alpha = 1.0f;
        self.frontView.alpha = 0.0f;
        [self bringSubviewToFront:self.frontView];
        self.flipped = YES;
        
        CALayer *layer = self.layer;
        CATransform3D rotationAndPerspectiveTransform = CATransform3DIdentity;
        rotationAndPerspectiveTransform.m34 = 1.0 / 500;
        rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, M_PI, 1.0f, 0.0f, 0.0f);
        layer.transform = rotationAndPerspectiveTransform;
    };
    [UIView animateWithDuration:0.25
                          delay:0.0
                        options: UIViewAnimationCurveEaseInOut
                     animations:animationsBlock
                     completion:nil];
    
}



@end
