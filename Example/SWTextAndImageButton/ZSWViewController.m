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
    SWTextAndImageButton * btn =  [[SWTextAndImageButton alloc]initWithFrame:(CGRectMake(100, 10, 200, 75))];
    btn.backgroundColor =[ UIColor redColor];
    
    btn.imageView.backgroundColor = [UIColor greenColor];
    btn.titleLabel.backgroundColor = [UIColor blueColor];
    
    btn.rectType =SWButtonTypeTextLeft;
    btn.contentDistance = 44;
    btn.padding2 =20;
    btn.imageCornerRadius = 20;
    
    [btn setTitle:@"测试1" forState:(UIControlStateNormal)];
    [btn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [btn setImage:[UIImage imageNamed:@"21.png"] forState:(UIControlStateNormal)];
    
    [self.view addSubview:btn];
    
    
    
    
    SWTextAndImageButton * btn1 =  [[SWTextAndImageButton alloc]initWithFrame:(CGRectMake(100, 120, 200, 100))];
    btn1.backgroundColor =[ UIColor redColor];
    
    btn1.imageView.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.5];
    btn1.titleLabel.backgroundColor = [UIColor blueColor];
    
    btn1.rectType =SWButtonTypeTextLeft;
    btn1.contentDistance = 44;
    btn1.padding2 =0.1;
    btn1.imageCornerRadius = 20;
    
    
    
    [btn1 setTitle:@"测试2" forState:(UIControlStateNormal)];
    [btn1 setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [btn1 setImage:[UIImage imageNamed:@"0.png"] forState:(UIControlStateNormal)];
    
    [self.view addSubview:btn1];
    
    
    SWTextAndImageButton * btn2 =  [[SWTextAndImageButton alloc]initWithFrame:(CGRectMake(50, 230, 300, 100))];
    btn2.backgroundColor =[ UIColor redColor];
    
    btn2.imageView.backgroundColor = [UIColor colorWithWhite:0.5 alpha:0.5];
    btn2.imageView.contentMode = UIViewContentModeScaleAspectFit;
    btn2.titleLabel.backgroundColor = [UIColor blueColor];
    
    
    btn2.rectType =SWButtonTypeTextLeft;
    btn2.contentDistance = 44;
    btn2.padding2 =10;
    btn2.imageCornerRadius = 20;
    
    [btn2 setTitle:@"测试3" forState:(UIControlStateNormal)];
    [btn2 setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [btn2 setImage:[UIImage imageNamed:@"22.jpg"] forState:(UIControlStateNormal)];
    
    [self.view addSubview:btn2];
    
    
 
}


@end
