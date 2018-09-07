//
//  LZBarrageRenderer.m
//  LZBarrage
//
//  Created by zlh on 2018/9/7.
//

#import "LZBarrageRenderer.h"
#import "LZBarrageCanvas.h"
#import "LZBarrageTimer.h"

@interface LZBarrageRenderer()

@property (nonatomic, strong) UIView *canvas;
@property (nonatomic, strong) LZBarrageTimer *timer;
@end

@implementation LZBarrageRenderer

- (instancetype)init
{
    if (self = [super init])
    {
        _canvas = [LZBarrageCanvas new];
        __weak typeof(self) weakSelf = self;
        _timer = [LZBarrageTimer timerWithHandler:^(NSTimeInterval time) {
            __strong typeof(weakSelf) strongSelf = weakSelf;
            [strongSelf update];
        }];
    }
    return self;
}

- (void)update
{
    if (self.refreshHandler)
    {
        self.refreshHandler();
    }
}
@end
