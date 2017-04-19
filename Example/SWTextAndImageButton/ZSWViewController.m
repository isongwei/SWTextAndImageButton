//
//  ZSWViewController.m
//  SWTextAndImageButton
//
//  Created by i_songwei@163.com on 04/18/2017.
//  Copyright (c) 2017 i_songwei@163.com. All rights reserved.
//

#import "ZSWViewController.h"
#import "SWTextAndImageButton.h"

@interface ZSWViewController ()

@end

@implementation ZSWViewController

- (void)viewDidLoad
{
    SWTextAndImageButton * btn =  [[SWTextAndImageButton alloc]initWithFrame:(CGRectMake(100, 10, 200, 100))];
    btn.backgroundColor =[ UIColor redColor];
    
    btn.imageView.backgroundColor = [UIColor greenColor];
    btn.titleLabel.backgroundColor = [UIColor blueColor];
    btn.rectType =SWButtonTypeTextLeft;
    btn.contentDistance = 10;
    btn.padding = 20;
    
    [btn setTitle:@"测试" forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [btn setImage:[UIImage imageNamed:@"0.png"] forState:(UIControlStateNormal)];
    
    [self.view addSubview:btn];
    
 
}


@end
