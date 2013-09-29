//
//  RollsViewController.h
//  Luck of the Settlers
//
//  Created by Max Bernardy on 9/29/13.
//  Copyright (c) 2013 Max Bernardy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RollsViewController : UITableViewController

- (IBAction)modify2:(id)sender forEvent:(UIEvent *)event;


@property (weak, nonatomic) IBOutlet UILabel *count2;

@end
