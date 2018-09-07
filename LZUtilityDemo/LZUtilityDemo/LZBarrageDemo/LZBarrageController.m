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
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    self.scrollView.frame = self.view.bounds;
}
@end
