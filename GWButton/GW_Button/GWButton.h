//
//  GWButton.h
//  GWButton
//
//  Created by gw on 2019/3/3.
//  Copyright © 2019 gw. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger, GWButtonStyle){
    GWButtonStyleTop,       // 图片在上，文字在下
    GWButtonStyleLeft,      // 图片在左，文字在右
    GWButtonStyleRight,     // 图片在右，文字在左
    GWButtonStyleBottom,    // 图片在下，文字在上
};
@interface GWButton : UIButton
/**
 GWButton的样式(Top、Left、Right、Bottom)
 */
@property (nonatomic, assign) GWButtonStyle style;

/**
 图片和文字的间距
 */
@property (nonatomic, assign) CGFloat space;

/**
 整个GWButton(包含ImageV and titleV)的内边距
 */
@property (nonatomic, assign) CGFloat padding;

@end

NS_ASSUME_NONNULL_END
