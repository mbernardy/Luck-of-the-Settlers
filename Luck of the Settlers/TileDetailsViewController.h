//
//  TileDetailsViewController.h
//  Luck of the Settlers
//
//  Created by Max Bernardy on 10/25/14.
//  Copyright (c) 2014 Max Bernardy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tile.h"
#import "ResourceViewController.h"
#import "RollChooserController.h"

@class TileDetailsViewController;

@protocol TileDetailsViewControllerDelegate <NSObject>
- (void)tileDetailsViewControllerDidCancel:(TileDetailsViewController *)controller;
- (void)tileDetailsViewController:(TileDetailsViewController *)controller didAddTile:(Tile *) Tile;
@end

@interface TileDetailsViewController : UITableViewController<ResourceViewControllerDelegate,  RollChooserControllerDelegate>
@property (weak, nonatomic) IBOutlet UITableViewCell *resourceLabel;
@property (weak, nonatomic) IBOutlet UITableViewCell *rollLabel;

@property (nonatomic, weak) id <TileDetailsViewControllerDelegate> delegate;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end