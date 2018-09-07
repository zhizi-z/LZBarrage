//
//  LZBarrageController.m
//  LZUtilityDemo
//
//  Created by zlh on 2018/9/7.
//  Copyright © 2018年 zlh. All rights reserved.
//

#import "LZBarrageController.h"
#import "LZBarrageRenderer.h"

@interface LZBarrageController ()

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;

@property (nonatomic, strong) UIButton *btnStart;
@property (nonatomic, strong) UIButton *btnPause;
@property (nonatomic, strong) UIButton *btnEnd;
@property (nonatomic, strong) UIButton *btnNormalSpeed;
@property (nonatomic, strong) UIButton *btnDoubleSpeed;
@property (nonatomic, strong) UIButton *btn30height;
@property (nonatomic, strong) UIButton *btn60Height;
@end

@implementation LZBarrageController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"LZBarrageDemo";
    
    _scrollView = [UIScrollView new];
    [self.view addSubview:_scrollView];
    
    UIImage *image = [UIImage imageNamed:@"scene.jpg"];
    _imageView = [[UIImageView alloc] initWithImage:image];
    _imageView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
    [_scrollView addSubview:_imageView];
    
    _scrollView.contentSize = image.size;
    
    _btnStart = [UIButton new];
    _btnStart.backgroundColor = [UIColor magentaColor];
    _btnStart.layer.cornerRadius = 5.0;
    [_btnStart setTitle:@"开始" forState:UIControlStateNormal];
    [self.view addSubview:_btnStart];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    self.scrollView.frame = self.view.bounds;
    self.btnStart.frame = CGRectMake(5, self.view.frame.size.height - 100, 60, 30);
    self.btnPause.frame = CGRectMake(5, self.view.frame.size.height - 100, 60, 30);
}
@end
