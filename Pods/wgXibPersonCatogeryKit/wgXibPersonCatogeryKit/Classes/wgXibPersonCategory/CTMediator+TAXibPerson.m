//
//  CTMediator+TAXibPerson.m
//  WGLearnMTMediatorDemo
//
//  Created by wanggang on 2018/9/11.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import "CTMediator+TAXibPerson.h"

@implementation CTMediator (TAXibPerson)

- (UIViewController *)xibPersonWithImgName:(NSString *)imgName{
    
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:imgName forKey:@"imgName"];
    
    return [self performTarget:@"xibPersonViewController" action:@"xibPersonViewController" params:dic shouldCacheTarget:NO];
}

@end
