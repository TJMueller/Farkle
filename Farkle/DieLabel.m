//
//  DieLabel.m
//  Farkle
//
//  Created by Timothy Mueller on 3/19/15.
//  Copyright (c) 2015 Timothy Mueller. All rights reserved.
//

#import "DieLabel.h"

@implementation DieLabel

-(void)roll {
    self.dieNumber = arc4random_uniform(6)+1;
    self.text = [NSString stringWithFormat:@"%i",self.dieNumber];
}

-(IBAction)onTapped:(UITapGestureRecognizer *)sender{
//    if (sender.state == UIGestureRecognizerStateEnded) {
//        self.pointOfTap = [UIGestureRecognizer locationInView:self.view];
//        

//        self.isSelected = YES;
//        NSLog(@"%@",self.isSelected? @"YES" : @"NO");
//        [self.delegate rollDieInHand];
//   }
    [self.delegate rollDieInHand];


}



@end
