//
//  ViewController.m
//  testbed
//
//  Created by SDT-1 on 2014. 1. 17..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *back;
@property (weak, nonatomic) IBOutlet UIView *front;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    
    
}


- (void) flipCard {
    //[self.flipTimer invalidate];
    if (self.flipped){
        return;
    }
    
    id animationsBlock = ^{
        self.back.alpha = 1.0f;
        self.front.alpha = 0.0f;
        [self.view bringSubviewToFront:self.front];
        self.flipped = YES;
        
        CALayer *layer = self.view.layer;
        CATransform3D rotationAndPerspectiveTransform = CATransform3DIdentity;
        rotationAndPerspectiveTransform.m34 = 1.0 / 500;
        rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, M_PI, 0.0f, 1.0f, 0.0f);
        layer.transform = rotationAndPerspectiveTransform;
    };
    [UIView animateWithDuration:3.0
                          delay:0.0
                        options: UIViewAnimationCurveEaseInOut
                     animations:animationsBlock
                     completion:nil];
    
}

-(void)viewDidAppear:(BOOL)animated{
    //[self flipCard];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
