//
//  WGPersonPreferenceViewController.h
//  WGLearnMTMediatorDemo
//
//  Created by wanggang on 2018/5/9.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ResultBlock)(BOOL isLike);

@interface WGPersonPreferenceViewController : UIViewController

@property (nonatomic, copy) NSString *remind;
@property (nonatomic, copy) ResultBlock myBlock;

@end
