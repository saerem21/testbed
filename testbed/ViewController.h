//
//  ViewController.h
//  testbed
//
//  Created by SDT-1 on 2014. 1. 17..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property  BOOL flipped;
@property (strong,nonatomic)UIView *frontView;
@property (strong,nonatomic)UIView *backView;
- (void) flipCard;

@end
