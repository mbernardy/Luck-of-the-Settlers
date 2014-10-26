//
//  RollsTableViewController.m
//  Luck of the Settlers
//
//  Created by Max Bernardy on 1/26/14.
//  Copyright (c) 2014 Max Bernardy. All rights reserved.
//

#import "RollsTableViewController.h"
#import "RollTrackingViewCell.h"

@interface RollsTableViewController ()



@end

@implementation RollsTableViewController



- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
     self.rollCount = 0;
    
    self.rollValues = [[NSArray alloc] initWithObjects:
                       [NSNumber numberWithInt : 2],
                       [NSNumber numberWithInt : 3],
                       [NSNumber numberWithInt : 4],
                       [NSNumber numberWithInt : 5],
                       [NSNumber numberWithInt : 6],
                       [NSNumber numberWithInt : 7],
                       [NSNumber numberWithInt : 8],
                       [NSNumber numberWithInt : 9],
                       [NSNumber numberWithInt : 10],
                       [NSNumber numberWithInt : 11],
                       [NSNumber numberWithInt : 12], nil];
    

    self.rollProbabilities = [[NSArray alloc] initWithObjects:
                              [NSNumber numberWithDouble: (1.0/36)], //2
                              [NSNumber numberWithDouble: (2.0/36)], //3
                              [NSNumber numberWithDouble: (3.0/36)], //4
                              [NSNumber numberWithDouble: (4.0/36)], //5
                              [NSNumber numberWithDouble: (5.0/36)], //6
                              [NSNumber numberWithDouble: (6.0/36)], //7
                              [NSNumber numberWithDouble: (5.0/36)], //8
                              [NSNumber numberWithDouble: (4.0/36)], //9
                              [NSNumber numberWithDouble: (3.0/36)], //10
                              [NSNumber numberWithDouble: (2.0/36)], //11
                              [NSNumber numberWithDouble: (1.0/36)], //12
                              nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    //self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.rollValues count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"rollTrackingViewCell";
    RollTrackingViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    NSInteger row = [indexPath row];
    NSString *rollValue = [[self.rollValues objectAtIndex:row] stringValue];
    cell.rollValue.text = rollValue;
    cell.rollCount.text = @"0";
    cell.rollRatio.text =@"";
    cell.delegate = self;
    
    // Configure the cell...
    
    return cell;
}


-(void) updateRatio: (RollTrackingViewCell*) cell{
    int index = [[cell.rollValue text] intValue] - 2;
    NSNumber *expectedValue = [_rollProbabilities objectAtIndex: index];
    double expectedRolls = [expectedValue doubleValue] * _rollCount;
    double overrolls = [[cell.rollCount text] intValue] - expectedRolls;
    if( overrolls > 0){
        cell.rollRatio.text = [NSString stringWithFormat:@"%.1f", overrolls];
        cell.rollRatio.textColor = [UIColor greenColor];
    }else{
        cell.rollRatio.text = [NSString stringWithFormat:@"%.1f", fabs(overrolls)];
        cell.rollRatio.textColor = [UIColor redColor];
    }

}


-(void) countChanged
{
    _rollCount++;
    NSArray* cells = [(UITableView*)self.view visibleCells];
    for(RollTrackingViewCell *c in cells) {
        [self updateRatio:c];
    }
}

@end
