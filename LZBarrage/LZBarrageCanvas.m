//
//  LZBarrageCanvas.m
//  LZBarrage
//
//  Created by zlh on 2018/9/7.
//

#import "LZBarrageCanvas.h"

@implementation LZBarrageCanvas

- (instancetype)init
{
    if (self = [super init])
    {
        self.backgroundColor = [UIColor clearColor];
        self.clipsToBounds = YES;
    }
    return self;
}
@end
