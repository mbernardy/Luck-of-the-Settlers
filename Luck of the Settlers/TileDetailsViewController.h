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

@class TileDetailsViewController;

@protocol TileDetailsViewControllerDelegate <NSObject>
- (void)tileDetailsViewControllerDidCancel:(TileDetailsViewController *)controller;
- (void)tileDetailsViewController:(TileDetailsViewController *)controller didAddTile:(Tile *) Tile;
@end

@interface TileDetailsViewController : UITableViewController<ResourceViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITableViewCell *resourceLabel;

@property (nonatomic, weak) id <TileDetailsViewControllerDelegate> delegate;

- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;

@end