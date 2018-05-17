//
//  Target_WGPersonPreferenceViewController.m
//  WGLearnMTMediatorDemo
//
//  Created by wanggang on 2018/5/9.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import "Target_WGPersonPreferenceViewController.h"
#import "WGPersonPreferenceViewController.h"

@implementation Target_WGPersonPreferenceViewController

- (UIViewController *)Action_WGPersonPreferenceViewController:(NSDictionary *)param{
    WGPersonPreferenceViewController *per = [[WGPersonPreferenceViewController alloc] init];
    per.remind = [param valueForKey:@"remind"];
    per.myBlock = [param valueForKey:@"myBlock"];
    return per;
}

@end
