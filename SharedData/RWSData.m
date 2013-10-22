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

// A few things to keep in mind here.
// - Just because there is a -sharedData method doesn't mean you couldn't just alloc/init a new RWSData object.
// - Beward that, because you are sharing data here with multiple controllers, you'll want to watch out things like one controller trying to iterate over an array while another is trying to mutate that array. You'll wanna serialize access to stuff inside this class or something.
// - This didn't take an elaborate framework or library.

@end
