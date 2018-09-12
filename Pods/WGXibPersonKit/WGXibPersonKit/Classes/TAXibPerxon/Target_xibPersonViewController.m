//
//  Target_xibPersonViewController.m
//  WGLearnMTMediatorDemo
//
//  Created by wanggang on 2018/9/11.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import "Target_xibPersonViewController.h"
#import "WGXibPersonViewController.h"

@implementation Target_xibPersonViewController

- (UIViewController *)Action_xibPersonViewController:(NSDictionary *)param{
    
//    NSBundle *curB = [NSBundle bundleForClass:[self class]];
//    NSString *path = [curB pathForResource:@"WGXibPersonKit" ofType:@"bundle"];
//    WGXibPersonViewController *con = [[WGXibPersonViewController alloc] initWithNibName:@"WGXibPersonViewController" bundle:[NSBundle bundleWithPath:path]];
    
    
//    NSURL *url = [curB URLForResource:@"WGXibPersonKit" withExtension:@"bundle"];
//    WGXibPersonViewController *con = [[WGXibPersonViewController alloc] initWithNibName:@"WGXibPersonViewController" bundle:[NSBundle bundleWithURL:url]];
    WGXibPersonViewController *con = [[WGXibPersonViewController alloc] init];
    con.imgName = param[@"imgName"];
    
    return con;
}

@end
