//
//  RollTrackingViewCell.m
//  Luck of the Settlers
//
//  Created by Max Bernardy on 1/26/14.
//  Copyright (c) 2014 Max Bernardy. All rights reserved.
//

#import "RollTrackingViewCell.h"

@implementation RollTrackingViewCell

@synthesize rollValue = _rollValue;
@synthesize rollCount = _rollCount;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)countChanged:(UIStepper*)sender {
    _rollCount.text = [NSString stringWithFormat:@"%d", (int)[sender value]];
}
@end
