//
//  main.m
//  Personal Revenue
//
//  Created by FCS on 10/6/14.
//  Copyright (c) 2014 nhatquang@floatingcube.com. All rights reserved.
//

#import "DataHandler.h"

int main(int argc, const char *argv[]){
    
    @autoreleasepool {
        DataHandler *d = [[DataHandler alloc] init];
        [d createDatabaseExample];
    }
    return 0;
}
