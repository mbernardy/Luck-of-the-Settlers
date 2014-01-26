//
//  CountChangedProtocol.h
//  Luck of the Settlers
//
//  Created by Max Bernardy on 1/26/14.
//  Copyright (c) 2014 Max Bernardy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RollTrackingViewCell.h"


@protocol CountChangedDelegate <NSObject>

@required

- (void) countChanged: (RollTrackingViewCell*) cell;
@end

@interface CountChangedProtocol : NSObject

@end
