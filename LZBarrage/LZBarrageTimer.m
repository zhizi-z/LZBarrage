//
//  LZBarrageTimer.m
//  LZBarrage
//
//  Created by zlh on 2018/9/7.
//

#import "LZBarrageTimer.h"

@interface LZBarrageTimer()

@property (nonatomic, copy) void (^trigger)(NSTimeInterval time);

@property (nonatomic, strong) CADisplayLink *displayLink;
@property (nonatomic, assign) BOOL launched;//是否处于启动状态
@property (nonatomic, assign) NSTimeInterval previousTime;
@property (nonatomic, assign) NSTimeInterval time;
@end

@implementation LZBarrageTimer

+ (instancetype)timerWithHandler:(void (^)(NSTimeInterval time))block
{
    LZBarrageTimer *timer = [[self alloc] initWithHandler:block];
    return timer;
}

- (instancetype)initWithHandler:(void (^)(NSTimeInterval time))block
{
    if (self = [super init]) {
        _trigger = block;
    }
    return self;
}

- (void)reset
{
    _displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(update)];
    _speed = 1.0f;
    _launched = NO;
}

- (void)update
{
    [self updateTime];
    self.trigger(self.time);
}

- (void)updateTime
{
    CFTimeInterval currentTime = CACurrentMediaTime();
    self.time += (currentTime - self.previousTime) * self.speed;
    self.previousTime = currentTime;
}
@end
