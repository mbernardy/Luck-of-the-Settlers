//
//  RollChooserController.m
//  Luck of the Settlers
//
//  Created by Max Bernardy on 10/26/14.
//  Copyright (c) 2014 Max Bernardy. All rights reserved.
//

#import "RollChooserController.h"

@interface RollChooserController ()

@end

@implementation RollChooserController

NSArray *_rolls;
NSUInteger _selectedIndex;

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    _rolls = @[@"2",@"3",@"4",@"5",@"6",@"8",@"9",@"10",@"11",@"12"];
    
    _selectedIndex = [_rolls indexOfObject:_roll];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_rolls count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RollCell"];
    cell.textLabel.text = _rolls[indexPath.row];
    
    if (indexPath.row == _selectedIndex) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (_selectedIndex != NSNotFound) {
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:
                                 [NSIndexPath indexPathForRow:_selectedIndex inSection:0]];
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    _selectedIndex = indexPath.row;
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
    NSNumber *roll = [_rolls objectAtIndex:indexPath.row];
    
    [self.delegate roolChooserViewController:self didSelectRoll:roll];
}

@end
