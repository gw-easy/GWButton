//
//  GWButton.m
//  GWButton
//
//  Created by gw on 2019/3/3.
//  Copyright © 2019 gw. All rights reserved.
//

#import "GWButton.h"

@implementation GWButton

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        // 默认 文字和图片的间距是 0
        _space = 0.0f;
        // 默认的内边距为 8
        _padding = 8.0f;
        
        [self.titleLabel setTextAlignment:NSTextAlignmentCenter];
        
    }
    
    return self;
    
}

#pragma mark - set
- (void)setStyle:(GWButtonStyle)style{
    _style = style;
}

- (void)setSpace:(CGFloat)space {
    _space = space;
}

- (void)setPadding:(CGFloat)padding{
    _padding = padding;
}

#pragma mark -  重写 imageFrame and labelFrame
- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    
    CGFloat imageX;
    CGFloat imageY;
    
    CGFloat imageW;
    CGFloat imageH;
    
    switch (_style) {
        case GWButtonStyleTop:{
            
            imageH = (CGRectGetHeight(contentRect) - _padding * 2) * 0.65;
            imageW = imageH;
            
            imageX = (CGRectGetWidth(contentRect) - imageW) / 2;
            imageY = _padding;
            
        }break;
            
        case GWButtonStyleLeft:{
            
            imageX = _padding;
            imageY = _padding;
            
            imageH = CGRectGetHeight(contentRect) - _padding * 2;
            imageW = imageH;
            
        }break;
            
        case GWButtonStyleRight:{
            
            imageH = CGRectGetHeight(contentRect) - _padding * 2;
            imageW = imageH;
            
            imageX = CGRectGetWidth(contentRect) - imageW - _padding;
            imageY = _padding;
            
        }break;
            
        case GWButtonStyleBottom:{
            
            imageH = (CGRectGetHeight(contentRect) - _padding * 2) * 0.65;
            imageW = imageH;
            
            imageX = (CGRectGetWidth(contentRect) - imageW) / 2;
            imageY = (CGRectGetHeight(contentRect) - _padding * 2) - imageH + _padding  + _space;
            
        }break;
            
        default:
            break;
    }
    
    return CGRectMake(imageX, imageY, imageW, imageH);
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    
    CGFloat titleX;
    CGFloat titleY;
    
    CGFloat titleW;
    CGFloat titleH;
    
    switch (_style) {
        case GWButtonStyleTop:{
            
            titleX = _padding;
            titleY = (CGRectGetHeight(contentRect) - _padding * 2) * 0.65 + _padding + _space;
            
            titleW = CGRectGetWidth(contentRect) - _padding * 2;
            titleH = CGRectGetHeight(contentRect) - titleY - _padding;
            
        }break;
            
        case GWButtonStyleLeft:{
            
            titleX = _padding + (CGRectGetHeight(contentRect) - _padding * 2) + _space;
            titleY = _padding;
            
            titleW = CGRectGetWidth(contentRect) - titleX - _padding;
            titleH = CGRectGetHeight(contentRect) - _padding * 2;
            
        }break;
            
        case GWButtonStyleRight:{
            
            titleX = _padding;
            titleY = _padding;
            
            titleW = CGRectGetWidth(contentRect) - (CGRectGetHeight(contentRect) - _padding * 2) - _padding * 2 - _space;
            titleH = CGRectGetHeight(contentRect) - _padding * 2;
            
        }break;
            
        case GWButtonStyleBottom:{
            
            titleX = _padding;
            titleY = _padding;
            
            titleW = CGRectGetWidth(contentRect) - _padding * 2;
            titleH = CGRectGetHeight(contentRect) - (CGRectGetHeight(contentRect) - _padding * 2) * 0.65 - _padding * 2 - _space;
            
        }break;
            
        default:
            break;
    }
    
    return CGRectMake(titleX, titleY, titleW, titleH);
}

@end
