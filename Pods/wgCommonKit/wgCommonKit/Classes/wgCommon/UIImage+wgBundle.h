//
//  UIImage+wgBundle.h
//  Pods-wgCommonKit_Example
//
//  Created by wanggang on 2018/5/21.
//

#import <UIKit/UIKit.h>

@interface UIImage (wgBundle)

+ (instancetype)wg_imgWithName:(NSString *)name bundle:(NSString *)bundleName targetClass:(Class)targetClass;

@end
