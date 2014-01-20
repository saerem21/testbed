//
//  filpViewController.m
//  testbed
//
//  Created by SDT-1 on 2014. 1. 17..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "filpViewController.h"

@interface filpViewController ()
@property (weak, nonatomic) IBOutlet UIView *front;
@property (weak, nonatomic) IBOutlet UIView *back;

@end

@implementation filpViewController

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
        rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform,M_PI, 0.0f, 1.0f, 0.0f);
        layer.transform = rotationAndPerspectiveTransform;
    };
    [UIView animateWithDuration:0.28
                          delay:0.0
                        options: UIViewAnimationCurveEaseInOut
                     animations:animationsBlock
                     completion:nil];
    
}

- (void) reverseCard {
    //[self.flipTimer invalidate];
    if (!self.flipped){
        return;
    }
    
    id animationsBlock = ^{
        self.front.alpha = 1.0f;
        self.back.alpha = 0.0f;
        [self.view bringSubviewToFront:self.back];
        self.flipped = NO;
        
        CALayer *layer = self.view.layer;
        CATransform3D rotationAndPerspectiveTransform = CATransform3DIdentity;
        rotationAndPerspectiveTransform.m34 = 1.0 / 500;
        rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform,0, 0.0f, 1.0f, 0.0f);
        layer.transform = rotationAndPerspectiveTransform;
    };
    [UIView animateWithDuration:0.28
                          delay:0.0
                        options: UIViewAnimationCurveEaseInOut
                     animations:animationsBlock
                     completion:nil];
    
}


-(void)cardTest{
    [UIView transitionWithView:self.view
                      duration:1.0
                       options:UIViewAnimationOptionTransitionFlipFromLeft
                    animations: ^{
                        [self.front removeFromSuperview];
                        [self.view addSubview:self.back];
                    }
                    completion:NULL];
    NSLog(@"%@",self.front);
}

-(void)cardRTest{
    [UIView transitionWithView:self.view
                      duration:1.0
                       options:UIViewAnimationOptionTransitionFlipFromRight
                    animations: ^{
                        [self.back removeFromSuperview];
                        [self.view addSubview:self.front];
                    }
                    completion:NULL];
}


- (IBAction)reverse:(id)sender {
    //[self cardRTest];
    [self reverseCard];
  

}

- (IBAction)filp:(id)sender {
    //[self cardTest];
    [self flipCard];
     }

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
