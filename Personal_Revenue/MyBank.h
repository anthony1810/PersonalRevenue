//
//  MyBank.h
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyBank : NSObject

@property NSString *name;
@property double moneyAmount;

-(void) addMoney: (double) money;
-(bool) withdraw: (double) money;

@end
