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


#pragma mark - ===============upDataFrame===============
-(void)upDateFrame{
    

    switch (_rectType) {
        case SWButtonTypeNone:
        {
            
        }
            break;
        case SWButtonTypeTextLeft:
        {
            //使图片和文字水平居中显示    文字左
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0,-self.imageView.frame.size.width-_contentDistance*0.5, 0.0,self.imageView.frame.size.width+_contentDistance*0.5)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0.0, self.titleLabel.bounds.size.width+_contentDistance*0.5,0.0, -self.titleLabel.bounds.size.width-_contentDistance*0.5)];
            
            if (_padding != 0 && self.imageView && self.titleLabel) {
                
                CGRect frame = self.titleLabel.frame;
                if (frame.origin.x != _padding && _padding >= 0) {
                    
                    UIEdgeInsets ss = self.contentEdgeInsets;
                    ss.left -= frame.origin.x;
                    ss.left += _padding;
                    ss.right += frame.origin.x;
                    ss.right -= _padding;
                    self.contentEdgeInsets =ss;
                } else{
                    CGRect frame2 = self.imageView.frame;
                    UIEdgeInsets ss = self.contentEdgeInsets;
                    ss.left += (self.frame.size.width-frame2.size.width-frame2.origin.x);
                    ss.left -= -_padding;
                    ss.right -= (self.frame.size.width-frame2.size.width-frame2.origin.x);
                    ss.right += -_padding;
                    self.contentEdgeInsets =ss;
                    
                }
            }
        }
            break;
        case SWButtonTypeTextRight:
        {
            //使图片和文字水平居中显示    图片左
            self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
            [self setTitleEdgeInsets:UIEdgeInsetsMake(0,_contentDistance*0.5, 0,-_contentDistance*0.5)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(0, -_contentDistance*0.5,0, _contentDistance*0.5)];
            
            if (_padding != 0 && self.imageView && self.titleLabel) {
                CGRect frame = self.imageView.frame;
                if (frame.origin.x != _padding && _padding >= 0) {
                    UIEdgeInsets ss = self.contentEdgeInsets;
                    ss.left -= frame.origin.x;
                    ss.left += _padding;
                    ss.right += frame.origin.x;
                    ss.right -= _padding;
                    self.contentEdgeInsets =ss;
                }else{
                    
                    CGRect frame2 = self.titleLabel.frame;
                    UIEdgeInsets ss = self.contentEdgeInsets;
                    ss.left += (self.frame.size.width-frame2.size.width-frame2.origin.x);
                    ss.left -= -_padding;
                    ss.right -= (self.frame.size.width-frame2.size.width-frame2.origin.x);
                    ss.right += -_padding;
                    self.contentEdgeInsets =ss;
                    
                }
            }
        }
            break;
        case SWButtonTypeTextUp:
        {
            //使图片和文字垂直居中显示    文字上
            self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
            [self setTitleEdgeInsets:UIEdgeInsetsMake(-self.titleLabel.bounds.size.height*0.5-_contentDistance*0.5,-self.imageView.bounds.size.width*0.5,self.titleLabel.bounds.size.height*0.5+_contentDistance*0.5,self.imageView.bounds.size.width*0.5)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(self.imageView.bounds.size.height*0.5+_contentDistance*0.5,self.titleLabel.bounds.size.width*0.5,-self.imageView.bounds.size.height*0.5-_contentDistance*0.5,-self.titleLabel.bounds.size.width*0.5)];
            
            if (_padding != 0 && self.imageView && self.titleLabel) {
                CGRect frame = self.titleLabel.frame;
                if (frame.origin.y != _padding && _padding >= 0) {
                    UIEdgeInsets ss = self.contentEdgeInsets;
                    ss.top -= frame.origin.y;
                    ss.top += _padding;
                    ss.bottom += frame.origin.y;
                    ss.bottom -= _padding;
                    self.contentEdgeInsets =ss;
                }else{
                    
                    CGRect frame2 = self.imageView.frame;
                    UIEdgeInsets ss = self.contentEdgeInsets;
                    ss.top += (self.frame.size.height-frame2.size.height-frame2.origin.y);
                    ss.top -= -_padding;
                    ss.bottom -= (self.frame.size.height-frame2.size.height-frame2.origin.y);
                    ss.bottom += -_padding;
                    self.contentEdgeInsets =ss;
                    
                }
            }
        }
            break;
        case SWButtonTypeTextDown:
        {
            //使图片和文字垂直居中显示    图片上
            self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
            [self setTitleEdgeInsets:UIEdgeInsetsMake(self.titleLabel.bounds.size.height*0.5+_contentDistance*0.5,-self.imageView.bounds.size.width*0.5,-self.titleLabel.bounds.size.height*0.5-_contentDistance*0.5,self.imageView.bounds.size.width*0.5)];
            [self setImageEdgeInsets:UIEdgeInsetsMake(-self.imageView.bounds.size.height*0.5-_contentDistance*0.5,self.titleLabel.bounds.size.width*0.5,self.imageView.bounds.size.height*0.5+_contentDistance*0.5,-self.titleLabel.bounds.size.width*0.5)];
            
            if (_padding != 0 && self.imageView && self.titleLabel) {
                CGRect frame = self.imageView.frame;
                if (frame.origin.y != _padding && _padding >= 0) {
                    UIEdgeInsets ss = self.contentEdgeInsets;
                    ss.top -= frame.origin.y;
                    ss.top += _padding;
                    ss.bottom += frame.origin.y;
                    ss.bottom -= _padding;
                    self.contentEdgeInsets =ss;
                }else{
                    
                    CGRect frame2 = self.titleLabel.frame;
                    UIEdgeInsets ss = self.contentEdgeInsets;
                    ss.top += (self.frame.size.height-frame2.size.height-frame2.origin.y);
                    ss.top -= -_padding;
                    ss.bottom -= (self.frame.size.height-frame2.size.height-frame2.origin.y);
                    ss.bottom += -_padding;
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

-(void)setRectType:(SWButtonType)rectType{
    _rectType = rectType;
    [self upDateFrame];
}
-(void)setRectTypeInt:(NSInteger)rectTypeInt{
    _rectType = rectTypeInt;
    [self upDateFrame];
}

-(void)setPadding:(float)padding{
    NSAssert(padding >= 0, @"确保padding值非负");
    _padding = padding;
    [self upDateFrame];
}

-(void)setPadding2:(float)padding2{
    NSAssert(padding2 >= 0, @"确保padding_值非负");
    _padding2 = padding2;
    _padding = -padding2;
    
    [self upDateFrame];
}

-(void)setContentDistance:(float)contentDistance{
    NSAssert(contentDistance >= 0, @"确保contentDistance值非负");
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
