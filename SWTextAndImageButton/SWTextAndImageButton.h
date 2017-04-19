//
//  SWTextAndImageButton.h
//  swbutton
//
//  Created by iSongWei on 2017/4/17.
//  Copyright © 2017年 iSong. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, SWButtonType)
{
    SWButtonTypeNone = 0,
    SWButtonTypeTextLeft ,                   //文字   ←   图片→
    SWButtonTypeTextRight ,                 //文字   →   图片←
    SWButtonTypeTextUp ,                     //文字   ↑   图片↓
    SWButtonTypeTextDown ,                 //文字   ↓   图片↑
    
};

@interface SWTextAndImageButton : UIButton

@property (nonatomic,assign) IBInspectable SWButtonType  rectType;

//xib 使用,对应枚举数值
@property (nonatomic,assign) IBInspectable NSInteger  rectTypeInt;
//距离   左右 是左边距    上下是上边距
@property (nonatomic,assign) IBInspectable float padding;
//图片文字距离
@property (nonatomic,assign) IBInspectable float contentDistance;

@end
