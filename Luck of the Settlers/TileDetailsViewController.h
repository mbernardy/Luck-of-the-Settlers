//
//  TileDetailsViewController.h
//  Luck of the Settlers
//
//  Created by Max Bernardy on 10/25/14.
//  Copyright (c) 2014 Max Bernardy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TileDetailsViewController;

@protocol TileDetailsViewControllerDelegate <NSObject>
- (void)tileDetailsViewControllerDidCancel:(TileDetailsViewController *)controller;
- (void)tileDetailsViewControllerDidSave:(TileDetailsViewController *)controller;
@end

@interface TileDetailsViewController : UITableViewController

@property (nonatomic, weak) id <TileDetailsViewControllerDelegate> delegate;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end