//
//  CTMediator+TAPersonPreference.m
//  WGLearnMTMediatorDemo
//
//  Created by wanggang on 2018/4/27.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import "CTMediator+TAPersonPreference.h"

@implementation CTMediator (TAPersonPreference)

- (UIViewController *)personPreferenceWithRemind:(NSString *)remind resultBlock:(ResultBlock)block{
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:remind forKey:@"remind"];
    [dic setValue:block forKey:@"myBlock"];
    
    return [self performTarget:@"WGPersonPreferenceViewController" action:@"WGPersonPreferenceViewController" params:dic shouldCacheTarget:NO];
}

@end
