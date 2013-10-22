//
//  RWSData.m
//  SharedData
//
//  Created by Samuel Goodwin on 23-10-13.
//  Copyright (c) 2013 Roundwall Software. All rights reserved.
//

#import "RWSData.h"

@implementation RWSData

+ (instancetype)sharedData
{
    static RWSData *data;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        data = [[self alloc] init];
    });
    return data;
}

@end
