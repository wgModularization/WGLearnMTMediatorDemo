//
//  NSBundle+wgSubBundle.h
//  CTMediator
//
//  Created by wanggang on 2018/9/12.
//

#import <Foundation/Foundation.h>

@interface NSBundle (wgSubBundle)

+ (instancetype)wg_subBundleWithBundleName:(NSString *)bundleName targetClass:(Class)targetClass;

@end
