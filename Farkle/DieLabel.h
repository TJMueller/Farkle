//
//  DieLabel.h
//  Farkle
//
//  Created by Timothy Mueller on 3/19/15.
//  Copyright (c) 2015 Timothy Mueller. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DieLabelDelegate <NSObject>
@optional



@end


@interface DieLabel : UILabel

-(void)roll;
@property int dieNumber;

@end