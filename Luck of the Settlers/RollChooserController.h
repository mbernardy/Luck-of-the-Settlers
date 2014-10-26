//
//  RollChooserController.h
//  Luck of the Settlers
//
//  Created by Max Bernardy on 10/26/14.
//  Copyright (c) 2014 Max Bernardy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RollChooserController;

@protocol RollChooserControllerDelegate <NSObject>

-(void)roolChooserViewController:(RollChooserController *) controller didSelectRoll:(NSNumber *) roll;
@end

@interface RollChooserController : UITableViewController

@property (nonatomic, weak) id <RollChooserControllerDelegate> delegate;
@property (nonatomic, strong) NSNumber *roll;

@end
