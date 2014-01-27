//
//  RollsTableViewController.h
//  Luck of the Settlers
//
//  Created by Max Bernardy on 1/26/14.
//  Copyright (c) 2014 Max Bernardy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CountChangedProtocol.h"

@interface RollsTableViewController : UITableViewController<CountChangedDelegate>

@property (nonatomic, strong) NSArray *rollValues;
@property (nonatomic, strong) NSArray *rollProbabilities;
@property (nonatomic) double rollCount;

@end
