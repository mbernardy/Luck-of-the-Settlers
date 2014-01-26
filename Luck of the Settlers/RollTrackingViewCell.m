//
//  RollTrackingViewCell.m
//  Luck of the Settlers
//
//  Created by Max Bernardy on 1/26/14.
//  Copyright (c) 2014 Max Bernardy. All rights reserved.
//

#import "RollTrackingViewCell.h"
#import "CountChangedProtocol.h"

@implementation RollTrackingViewCell

@synthesize rollValue = _rollValue;
@synthesize rollCount = _rollCount;
@synthesize rollRatio = _rollRatio;
@synthesize delegate = _delegate;


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
   
    if([_delegate respondsToSelector:@selector(countChanged:)])
    {
        //send the delegate function with the amount entered by the user
        [_delegate countChanged: self];
    }

    
}
- (IBAction)countChanged2:(id)sender forEvent:(UIEvent *)event {
    int a = 2;
    int b= 2;
    abs(a + b);
}
@end
