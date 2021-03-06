//
//  DieLabel.h
//  Farkle
//
//  Created by Timothy Mueller on 3/19/15.
//  Copyright (c) 2015 Timothy Mueller. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DieLabelDelegate <NSObject>

-(void)selectOurDie;

@end

@interface DieLabel : UILabel

-(void)roll;
@property int dieNumber;
@property BOOL isSelected;
@property CGPoint pointOfTap;
@property (nonatomic, assign) id <DieLabelDelegate> delegate;

@end
