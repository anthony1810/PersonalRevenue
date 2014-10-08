//
//  MyPocket.h
//  Personal_Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyPocket : NSObject

@property double moneyAmount;

-(void) addMoney: (double) amount;
-(bool) withdraw: (double) amount;

@end
