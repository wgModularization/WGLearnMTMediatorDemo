//
//  CTMediator+TAPersonInfo.m
//  WGLearnMTMediatorDemo
//
//  Created by wanggang on 2018/4/27.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import "CTMediator+TAPersonInfo.h"

@implementation CTMediator (TAPersonInfo)

- (UIViewController *)personInfoWithName:(NSString *)name age:(NSInteger)age{
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:name forKey:@"name"];
    [dic setValue:@(age) forKey:@"age"];
    
    return [self performTarget:@"WGPersonInfoViewController" action:@"PersonInfoViewController" params:dic shouldCacheTarget:NO];
}

@end
