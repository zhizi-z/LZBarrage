//
//  LZBarrageSprite.m
//  LZBarrage
//
//  Created by zlh on 2018/9/7.
//

#import "LZBarrageSprite.h"

@interface LZBarrageSprite()

@property (nonatomic, strong) UILabel *lblSprite;
@end

@implementation LZBarrageSprite

- (instancetype)init{
    if (self = [super init])
    {
        _direction = LZBarrageMoveDirectionR2L;
        _backgroundColor = [UIColor clearColor];
        _borderColor = [UIColor clearColor];
        _borderWidth = 0.0f;
        _cornerRadius = 0.0f;
        
        _fontName = @"Helvetica";
        _fontSize = 14.0;
        _textColor = [UIColor whiteColor];
        
        _lblSprite = [self createSpriteLabel];
    }
    return self;
}

- (UILabel *)createSpriteLabel
{
    UILabel *label = [UILabel new];
    label.backgroundColor = self.backgroundColor;
    label.layer.borderColor = self.borderColor.CGColor;
    label.layer.borderWidth = self.borderWidth;
    label.layer.cornerRadius = self.cornerRadius;
    label.font = [UIFont fontWithName:self.fontName size:self.fontSize];
    label.textColor = self.textColor;
    return label;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
    _backgroundColor = backgroundColor;
    self.lblSprite.backgroundColor = backgroundColor;
}

- (void)setBorderColor:(UIColor *)borderColor
{
    _borderColor = borderColor;
    self.lblSprite.layer.borderColor = borderColor.CGColor;
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
    _borderWidth = borderWidth;
    self.lblSprite.layer.borderWidth = borderWidth;
}

- (void)setCornerRadius:(CGFloat)cornerRadius
{
    _cornerRadius = cornerRadius;
    self.lblSprite.layer.cornerRadius = cornerRadius;
}

- (void)setText:(NSString *)text
{
    _text = text;
    self.lblSprite.text = text;
    [self.lblSprite sizeToFit];
}

- (void)setFontName:(NSString *)fontName
{
    _fontName = fontName;
    self.lblSprite.font = [UIFont fontWithName:fontName size:self.fontSize];
}

- (void)setFontSize:(CGFloat)fontSize
{
    _fontSize = fontSize;
    self.lblSprite.font = [UIFont fontWithName:self.fontName size:fontSize];
}

- (void)setTextColor:(UIColor *)textColor
{
    _textColor = textColor;
    self.lblSprite.textColor = textColor;
}

- (void)setAttributedText:(NSAttributedString *)attributedText
{
    _attributedText = attributedText;
    self.lblSprite.attributedText = attributedText;
    [self.lblSprite sizeToFit];
}
@end
