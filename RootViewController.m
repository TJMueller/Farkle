//
//  RootViewController.m
//  Farkle
//
//  Created by Timothy Mueller on 3/19/15.
//  Copyright (c) 2015 Timothy Mueller. All rights reserved.
//

#import "RootViewController.h"
#import "DieLabel.h"

@interface RootViewController () <DieLabelDelegate, UIGestureRecognizerDelegate>
@property (strong, nonatomic) IBOutlet DieLabel *dieLabelOne;
@property (strong, nonatomic) IBOutlet DieLabel *dieLabelTwo;
@property (strong, nonatomic) IBOutlet DieLabel *dieLabelThree;
@property (strong, nonatomic) IBOutlet DieLabel *dieLabelFour;
@property (strong, nonatomic) IBOutlet DieLabel *dieLabelFive;
@property (strong, nonatomic) IBOutlet DieLabel *dieLabelSix;
@property IBOutletCollection(DieLabel) NSMutableArray *dieLabels;
@property NSMutableArray *dice;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    for (DieLabel *die in self.dieLabels) {
        die.backgroundColor = [UIColor colorWithRed:1.000 green:0.419 blue:0.076 alpha:1.000];
        die.isSelected = NO;
        die.delegate = self; 
    }
    self.dice = [NSMutableArray arrayWithArray:self.dieLabels];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

}

- (IBAction)onRollButtonPressed:(id)sender {
//    for (DieLabel *die in self.dieLabels) {
    for (DieLabel * die in self.dice) {
        [die roll];
    }
}


-(void)selectOurDie{
    for (DieLabel *die in self.dieLabels) {
        if(die.backgroundColor == [UIColor blueColor]){
           die.isSelected = YES;
            [self.dice removeObject:die];
        }
    }
    for (DieLabel *die in self.dice) {
        NSLog(@"%i", die.dieNumber);
    }
}





@end
