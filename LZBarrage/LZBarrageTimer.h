//
//  LZBarrageTimer.h
//  LZBarrage
//
//  Created by zlh on 2018/9/7.
//

#import <Foundation/Foundation.h>

//定时器
@interface LZBarrageTimer : NSObject

@property (nonatomic, assign) CGFloat speed;//默认1.0

+ (instancetype)timerWithHandler:(void (^)(NSTimeInterval time))block;
@end
