//
//  TileDetailsViewController.m
//  Luck of the Settlers
//
//  Created by Max Bernardy on 10/25/14.
//  Copyright (c) 2014 Max Bernardy. All rights reserved.
//

#import "TileDetailsViewController.h"
#import "Tile.h"

@interface TileDetailsViewController ()

@end

@implementation TileDetailsViewController


NSString *_resource;
NSNumber *_roll;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.resourceLabel.textLabel.text = _resource;
    self.rollLabel.textLabel.text = [NSString stringWithFormat:@"%d", [_roll intValue]];
 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)cancel:(id)sender
{
    [self.delegate tileDetailsViewControllerDidCancel:self];
}
- (IBAction)done:(id)sender
{
    Tile *tile = [[Tile alloc] init];
    tile.resource = _resource;
    tile.roll = _roll;
    [self.delegate tileDetailsViewController:self didAddTile:tile];
}


#pragma mark - Navigation

 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
     if ([segue.identifier isEqualToString:@"PickResource"]) {
         ResourceViewController *resourceViewController = segue.destinationViewController;
         resourceViewController.delegate = self;
         resourceViewController.resource = _resource;
     } else if ([segue.identifier isEqualToString:@"PickRoll"]) {
         RollChooserController *rollChooserController = segue.destinationViewController;
         rollChooserController.delegate = self;
         rollChooserController.roll = _roll;
     }
}


- (void)resourceViewController:(ResourceViewController *)controller didSelectResource:(NSString *)resource
{
    _resource = resource;
    self.resourceLabel.textLabel.text = _resource;
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)roolChooserViewController:(RollChooserController *)controller didSelectRoll:(NSNumber *)roll_value
{
    _roll = roll_value;
    self.rollLabel.textLabel.text = [NSString stringWithFormat:@"%d", [_roll intValue]];
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

@end
