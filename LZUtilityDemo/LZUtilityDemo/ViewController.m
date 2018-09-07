//
//  ViewController.m
//  LZUtilityDemo
//
//  Created by zlh on 2018/9/6.
//  Copyright © 2018年 zlh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *btnBarrageDemo;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"LZUtilityDemo";
    self.navigationController.navigationBar.translucent = NO;
    
    _btnBarrageDemo = [UIButton new];
    _btnBarrageDemo.backgroundColor = [UIColor magentaColor];
    [_btnBarrageDemo setTitle:@"Barrage Demo" forState:UIControlStateNormal];
    [_btnBarrageDemo addTarget:self action:@selector(jumpToBarrageDemo) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btnBarrageDemo];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    self.btnBarrageDemo.frame = CGRectMake(20, 50, self.view.frame.size.width - 40, 50);
}

- (void)jumpToBarrageDemo
{
    Class class = NSClassFromString(@"LZBarrageController");
    [self.navigationController pushViewController:[class new] animated:YES];
}
@end
