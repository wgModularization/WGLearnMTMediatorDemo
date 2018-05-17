//
//  CTMediator+TAPersonPreference.h
//  WGLearnMTMediatorDemo
//
//  Created by wanggang on 2018/4/27.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import <CTMediator/CTMediator.h>

typedef void(^ResultBlock)(BOOL isLike);

@interface CTMediator (TAPersonPreference)

- (UIViewController *)personPreferenceWithRemind:(NSString *)remind resultBlock:(ResultBlock)block;

@end
