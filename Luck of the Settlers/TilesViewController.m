//
//  TilesTableViewController.m
//  Luck of the Settlers
//
//  Created by Max Bernardy on 10/25/14.
//  Copyright (c) 2014 Max Bernardy. All rights reserved.
//

#import "TilesViewController.h"

@implementation TilesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tiles = [NSMutableArray arrayWithCapacity:10];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.tiles count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
 {
     UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TileCell"];
 
     Tile *tile = (self.tiles)[indexPath.row];
     cell.textLabel.text = tile.resource;
     cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", [tile.roll intValue]];
 
     return cell;
 }

 #pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"AddTile"]) {
        
        UINavigationController *navigationController = segue.destinationViewController;
        TileDetailsViewController *tileDetailsViewController = [navigationController viewControllers][0];
        tileDetailsViewController.delegate = self;
    }
}



#pragma mark - TileDetailsViewControllerDelegate

- (void)tileDetailsViewControllerDidCancel:(TileDetailsViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)tileDetailsViewController:(TileDetailsViewController *)controller didAddTile:(Tile *) tile
{
    [self.tiles addObject:tile];
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:([self.tiles count] - 1) inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
