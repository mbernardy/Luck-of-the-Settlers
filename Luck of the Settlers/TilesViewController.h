//
//  TilesTableViewController.h
//  Luck of the Settlers
//
//  Created by Max Bernardy on 10/25/14.
//  Copyright (c) 2014 Max Bernardy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TileDetailsViewController.h"


@interface TilesViewController : UITableViewController <TileDetailsViewControllerDelegate>

@property (nonatomic, strong) NSMutableArray *tiles;

@end

