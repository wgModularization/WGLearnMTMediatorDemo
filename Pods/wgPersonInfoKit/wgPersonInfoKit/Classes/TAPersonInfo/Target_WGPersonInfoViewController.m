//
//  Target_WGPersonInfoViewController.m
//  WGLearnMTMediatorDemo
//
//  Created by wanggang on 2018/4/27.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import "Target_WGPersonInfoViewController.h"
#import "WGPersonInfoViewController.h"

@implementation Target_WGPersonInfoViewController

- (UIViewController *)Action_PersonInfoViewController:(NSDictionary *)param{
    WGPersonInfoViewController *perInfo = [[WGPersonInfoViewController alloc] init];
    perInfo.name = [param valueForKey:@"name"];
    perInfo.age = ((NSNumber *)[param valueForKey:@"age"]).integerValue;
    return perInfo;
}

@end
