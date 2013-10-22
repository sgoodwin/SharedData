//
//  RWSViewController.m
//  SharedData
//
//  Created by Samuel Goodwin on 23-10-13.
//

#import "RWSOneViewController.h"
#import "RWSData.h"

@implementation RWSOneViewController

- (RWSData *)data
{
    if(_data){
        return _data;
    }
    return [RWSData sharedData];
}

@end
