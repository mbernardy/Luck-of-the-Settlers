//
//  Tile.h
//  Luck of the Settlers
//
//  Created by Max Bernardy on 10/25/14.
//  Copyright (c) 2014 Max Bernardy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Tile : NSObject

@property (nonatomic, copy) NSString *resource;
@property (nonatomic) int roll_value;
@property (nonatomic) Boolean blocked;

@end
