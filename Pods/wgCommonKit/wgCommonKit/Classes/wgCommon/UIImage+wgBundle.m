//
//  UIImage+wgBundle.m
//  Pods-wgCommonKit_Example
//
//  Created by wanggang on 2018/5/21.
//

#import "UIImage+wgBundle.h"

@implementation UIImage (wgBundle)

+ (instancetype)wg_imgWithName:(NSString *)name bundle:(NSString *)bundleName targetClass:(Class)targetClass{
    NSInteger scale = [[UIScreen mainScreen] scale];
    NSBundle *curB = [NSBundle bundleForClass:targetClass];
    NSString *imgName = [NSString stringWithFormat:@"%@@%zdx.png", name,scale];
    NSString *dir = [NSString stringWithFormat:@"%@.bundle",bundleName];
    NSString *path = [curB pathForResource:imgName ofType:nil inDirectory:dir];
    return path?[UIImage imageWithContentsOfFile:path]:nil;
}

@end
