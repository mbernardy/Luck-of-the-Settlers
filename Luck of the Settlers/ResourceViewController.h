//
//  ResourceViewController.h
//  Luck of the Settlers
//
//  Created by Max Bernardy on 10/26/14.
//  Copyright (c) 2014 Max Bernardy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ResourceViewController;

@protocol ResourceViewControllerDelegate <NSObject>

-(void)resourceViewController:(ResourceViewController *) controller didSelectResource:(NSString *) resource;
@end

@interface ResourceViewController : UITableViewController

@property (nonatomic, weak) id <ResourceViewControllerDelegate> delegate;
@property (nonatomic, strong) NSString *resource;

@end
