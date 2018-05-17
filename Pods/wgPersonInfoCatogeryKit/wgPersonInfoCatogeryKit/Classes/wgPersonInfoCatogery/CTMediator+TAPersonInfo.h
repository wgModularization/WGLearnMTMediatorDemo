//
//  CTMediator+TAPersonInfo.h
//  WGLearnMTMediatorDemo
//
//  Created by wanggang on 2018/4/27.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import <CTMediator/CTMediator.h>

@interface CTMediator (TAPersonInfo)

- (UIViewController *)personInfoWithName:(NSString *)name age:(NSInteger)age;

@end
