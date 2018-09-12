//
//  WGXibPersonViewController.m
//  WGLearnMTMediatorDemo
//
//  Created by wanggang on 2018/9/11.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import "WGXibPersonViewController.h"
#import <wgCommonKit/UIImage+wgBundle.h>
#import "NSBundle+wgSubBundle.h"

@interface WGXibPersonViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation WGXibPersonViewController

-(instancetype)init{
    
    self = [super initWithNibName:@"WGXibPersonViewController" bundle:[NSBundle wg_subBundleWithBundleName:@"WGXibPersonKit" targetClass:[self class]]];
        
    if (self){
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imgView.image = [UIImage wg_imgWithName:@"Group" bundle:@"WGXibPersonKit" targetClass:[self class]];
    self.imgView.backgroundColor = [UIColor redColor];
    
   
}



@end
