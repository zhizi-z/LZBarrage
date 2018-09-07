//
//  LZBarrageRenderer.h
//  LZBarrage
//
//  Created by zlh on 2018/9/7.
//

#import <Foundation/Foundation.h>

//弹幕渲染（掌握大局）
@interface LZBarrageRenderer : NSObject

@property (nonatomic, strong, readonly) UIView *canvas;//调用者获得画布入口，调用者需设置canvas的大小位置
@property (nonatomic, assign) CGFloat speed;//倍速

@property (nonatomic, copy) void (^refreshHandler)(void);//每个刷新周期（帧同步），调用者回调
@end
