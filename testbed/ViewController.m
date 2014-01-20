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
    
    
    
//    CATransformLayer *cardContainer = [CATransformLayer layer];
//    cardContainer.frame = CGRectMake(0, 200, 100, 100);
//    
//    CALayer *cardFront  = [CALayer layer];
//    cardFront.frame     = cardContainer.bounds;
//    cardFront.zPosition = 2;   // Higher than the zPosition of the back of the card
//    cardFront.contents  = (id)[UIImage imageNamed:@"ball2.png"].CGImage;
//    [cardContainer addSublayer:cardFront];
//    
//    CALayer *cardBack  = [CALayer layer];
//    cardBack.frame     = cardContainer.bounds;
//    cardBack.zPosition = 1;
//    cardBack.contents  = (id)[UIImage imageNamed:@"ball3.png"].CGImage; // You may need to mirror this image
//    [cardContainer addSublayer:cardBack];
//    
//    [self.view.layer addSublayer:cardContainer];
    
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
