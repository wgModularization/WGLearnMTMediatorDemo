//
//  ViewController.m
//  WGLearnMTMediatorDemo
//
//  Created by wanggang on 2018/4/27.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#import "ViewController.h"
#import "CTMediator+TAPersonInfo.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *perInfoBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.perInfoBtn];
}

- (void)btnClicked{
    UIViewController *con = [[CTMediator sharedInstance] personInfoWithName:@"寒江" age:18];
    [self.navigationController pushViewController:con animated:YES];
}

-(UIButton *)perInfoBtn{
    if (!_perInfoBtn) {
        _perInfoBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 100, 40)];
        [_perInfoBtn setTitle:@"个人详情" forState:UIControlStateNormal];
        [_perInfoBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_perInfoBtn setBackgroundColor:[UIColor greenColor]];
        [_perInfoBtn addTarget:self action:@selector(btnClicked) forControlEvents:UIControlEventTouchUpInside];
    }
    return _perInfoBtn;
}




@end
