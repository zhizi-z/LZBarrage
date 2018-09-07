//
//  LZBarrageSprite.h
//  LZBarrage
//
//  Created by zlh on 2018/9/7.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, LZBarrageMoveDirection) {
    LZBarrageMoveDirectionR2L = 1,  // 右向左
    LZBarrageMoveDirectionL2R = 2,  // 左向右
    LZBarrageMoveDirectionT2B = 3,  // 上往下
    LZBarrageMoveDirectionB2T = 4   // 下往上
};

//弹幕
@interface LZBarrageSprite : NSObject

@property (nonatomic, assign) LZBarrageMoveDirection direction;//默认 LZBarrageMoveDirectionR2L

@property (nonatomic, strong) UIColor *backgroundColor;//默认透明
@property (nonatomic, strong) UIColor *borderColor;//默认透明
@property (nonatomic, assign) CGFloat borderWidth;//默认0
@property (nonatomic, assign) CGFloat cornerRadius;//默认0

@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *fontName;//默认 Helvetica
@property (nonatomic, assign) CGFloat fontSize;//默认 14
@property (nonatomic, strong) UIColor *textColor;//默认白色

@property (nonatomic, strong) NSAttributedString *attributedText;

@property (nonatomic, assign) CGFloat duration;//在屏幕上显示时间，设了duration就无需设置speed，优先duration
@property (nonatomic, assign) CGFloat speed;//移动速度
@end
