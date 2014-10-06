//
//  Utility.h
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Utility : NSObject

+(NSDateComponents *) createDateTimeWithYear: (int) year andMonth: (int) month andDay: (int) day andHour: (int) hour andMinute: (int) minute;

@end
