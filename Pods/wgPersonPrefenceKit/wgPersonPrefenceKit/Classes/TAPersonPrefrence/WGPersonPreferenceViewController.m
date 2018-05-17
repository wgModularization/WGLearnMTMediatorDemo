//
//  WGPersonPreferenceViewController.m
//  WGLearnMTMediatorDemo
//
//  Created by wanggang on 2018/5/9.
//  Copyright © 2018年 wanggang. All rights reserved.
//

#define WGWidth [UIScreen mainScreen].bounds.size.width

#import "WGPersonPreferenceViewController.h"

@interface WGPersonPreferenceViewController ()

@property (nonatomic, strong) UILabel *remindLab;
@property (nonatomic, strong) UIButton *likeBtn;
@property (nonatomic, strong) UIButton *unLikeBtn;

@end

@implementation WGPersonPreferenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.remindLab];
    [self.view addSubview:self.likeBtn];
    [self.view addSubview:self.unLikeBtn];
}

-(void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    self.remindLab.text = [NSString stringWithFormat:@"%@,谢谢！！！",self.remind];
}

- (void)btnClicked:(UIButton *)btn{
    switch (btn.tag) {
        case 1:
            self.myBlock(YES);
            [self.navigationController popViewControllerAnimated:YES];
            break;
            
        default:
            self.myBlock(NO);
            [self.navigationController popViewControllerAnimated:YES];
            break;
    }
}

-(UILabel *)remindLab{
    if (!_remindLab) {
        _remindLab = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, WGWidth, 100)];
        _remindLab.textColor = [UIColor blackColor];
        _remindLab.textAlignment = NSTextAlignmentCenter;
        _remindLab.backgroundColor = [UIColor brownColor];
    }
    return _remindLab;
}

-(UIButton *)likeBtn{
    if (!_likeBtn) {
        _likeBtn = [[UIButton alloc] initWithFrame:CGRectMake((WGWidth-100)*0.5, 220, 100, 40)];
        [_likeBtn setTitle:@"喜欢" forState:UIControlStateNormal];
        [_likeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_likeBtn setBackgroundColor:[UIColor cyanColor]];
        _likeBtn.tag = 1;
        [_likeBtn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _likeBtn;
}

-(UIButton *)unLikeBtn{
    if (!_unLikeBtn) {
        _unLikeBtn = [[UIButton alloc] initWithFrame:CGRectMake((WGWidth-100)*0.5, 300, 100, 40)];
        [_unLikeBtn setTitle:@"烦" forState:UIControlStateNormal];
        [_unLikeBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [_unLikeBtn setBackgroundColor:[UIColor redColor]];
        _unLikeBtn.tag = 2;
        [_unLikeBtn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _unLikeBtn;
}

@end
