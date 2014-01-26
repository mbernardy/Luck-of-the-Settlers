//
//  RollTrackingViewCell.h
//  Luck of the Settlers
//
//  Created by Max Bernardy on 1/26/14.
//  Copyright (c) 2014 Max Bernardy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RollTrackingViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *rollValue;
@property (weak, nonatomic) IBOutlet UIStepper *countStepper;
@property (weak, nonatomic) IBOutlet UILabel *rollCount;


- (IBAction)countChanged:(UIStepper*)sender;


@end
