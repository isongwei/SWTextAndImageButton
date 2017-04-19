//
//  SWTextAndImageButton.m
//  swbutton
//
//  Created by iSongWei on 2017/4/17.
//  Copyright © 2017年 iSong. All rights reserved.
//

#import "SWTextAndImageButton.h"
IB_DESIGNABLE

@implementation SWTextAndImageButton

#pragma mark - ===============懒加载===============
-(void)setRectType:(SWButtonType)rectType{
    _rectType = rectType;
    [self upDateFrame];
}
-(void)setRectTypeInt:(NSInteger)rectTypeInt{
    _rectType = rectTypeInt;
    [self upDateFrame];
}

#pragma mark - ===============upDataFrame===============
-(void)upDateFrame{
    

    switch (_rectType) {
        case SWButtonTypeNone:
        {
            
        }
            break;
        case SWButtonTypeTextLeft:
        {
            //使图片和文字水平居中显示
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0,-self.imageView.frame.size.width-_contentDistance*0.5, 0.0,self.imageView.frame.size.width+_contentDistance*0.5)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0.0, self.titleLabel.bounds.size.width+_contentDistance*0.5,0.0, -self.titleLabel.bounds.size.width-_contentDistance*0.5)];
            
            if (_padding != 0 && self.imageView && self.titleLabel) {
                
                CGRect frame = self.titleLabel.frame;
                if (frame.origin.x != _padding ) {
                    UIEdgeInsets ss = self.contentEdgeInsets;
                    ss.left -= frame.origin.x;
                    ss.left += _padding;
                    ss.right += frame.origin.x;
                    ss.right -= _padding;
                    self.contentEdgeInsets =ss;
                }
            }
        }
            break;
        case SWButtonTypeTextRight:
        {
            //使图片和文字水平居中显示
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0,_contentDistance*0.5, 0,-_contentDistance*0.5)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, -_contentDistance*0.5,0, _contentDistance*0.5)];
            
            if (_padding != 0 && self.imageView && self.titleLabel) {
                CGRect frame = self.imageView.frame;
                if (frame.origin.x != _padding ) {
                    UIEdgeInsets ss = self.contentEdgeInsets;
                    ss.left -= frame.origin.x;
                    ss.left += _padding;
                    ss.right += frame.origin.x;
                    ss.right -= _padding;
                    self.contentEdgeInsets =ss;
                }
            }
        }
            break;
        case SWButtonTypeTextUp:
        {
            self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
            [self setTitleEdgeInsets:UIEdgeInsetsMake(-self.titleLabel.bounds.size.height*0.5-_contentDistance*0.5,-self.imageView.bounds.size.width*0.5,self.titleLabel.bounds.size.height*0.5+_contentDistance*0.5,self.imageView.bounds.size.width*0.5)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(self.imageView.bounds.size.height*0.5+_contentDistance*0.5,self.titleLabel.bounds.size.width*0.5,-self.imageView.bounds.size.height*0.5-_contentDistance*0.5,-self.titleLabel.bounds.size.width*0.5)];
            
            if (_padding != 0 && self.imageView && self.titleLabel) {
                CGRect frame = self.titleLabel.frame;
                if (frame.origin.y != _padding ) {
                    UIEdgeInsets ss = self.contentEdgeInsets;
                    ss.top -= frame.origin.y;
                    ss.top += _padding;
                    ss.bottom += frame.origin.y;
                    ss.bottom -= _padding;
                    self.contentEdgeInsets =ss;
                }
            }
        }
            break;
        case SWButtonTypeTextDown:
        {
            self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
            [self setTitleEdgeInsets:UIEdgeInsetsMake(self.titleLabel.bounds.size.height*0.5+_contentDistance*0.5,-self.imageView.bounds.size.width*0.5,-self.titleLabel.bounds.size.height*0.5-_contentDistance*0.5,self.imageView.bounds.size.width*0.5)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(-self.imageView.bounds.size.height*0.5-_contentDistance*0.5,self.titleLabel.bounds.size.width*0.5,self.imageView.bounds.size.height*0.5+_contentDistance*0.5,-self.titleLabel.bounds.size.width*0.5)];
            
            if (_padding != 0 && self.imageView && self.titleLabel) {
                CGRect frame = self.imageView.frame;
                if (frame.origin.y != _padding ) {
                    UIEdgeInsets ss = self.contentEdgeInsets;
                    ss.top -= frame.origin.y;
                    ss.top += _padding;
                    ss.bottom += frame.origin.y;
                    ss.bottom -= _padding;
                    self.contentEdgeInsets =ss;
                }
            }
        }
            break;
        default:
            break;
    }
}
#pragma mark - ===============set===============

-(void)setPadding:(float)padding{
    _padding = padding;
    [self upDateFrame];
}

-(void)setContentDistance:(float)contentDistance{
    _contentDistance = contentDistance;
    [self upDateFrame];
}

-(void)setImage:(UIImage *)image forState:(UIControlState)state{
    [super setImage:image forState:state];
    [self upDateFrame];
}

-(void)setTitle:(NSString *)title forState:(UIControlState)state{
    [super setTitle:title forState:state];
    [self upDateFrame];
}

@end
