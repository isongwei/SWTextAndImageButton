//
//  ViewController.m
//  swbutton
//
//  Created by iSongWei on 2017/4/17.
//  Copyright © 2017年 iSong. All rights reserved.
//

#import "ViewController.h"
#import "SWTextAndImageButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SWTextAndImageButton * btn =  [[SWTextAndImageButton alloc]initWithFrame:(CGRectMake(100, 10, 200, 100))];
    btn.backgroundColor =[ UIColor redColor];
    
    btn.imageView.backgroundColor = [UIColor greenColor];
    btn.titleLabel.backgroundColor = [UIColor blueColor];
    btn.rectType =SWButtonTypeTextLeft;
    btn.contentDistance = 10;
    btn.padding = 20;
    
    [btn setTitle:@"sadsad" forState:(UIControlStateNormal)];
    
    [btn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [btn setImage:[UIImage imageNamed:@"00.png"] forState:(UIControlStateNormal)];
    

    
    NSLog(@"%@", NSStringFromUIEdgeInsets(btn.titleEdgeInsets));
    NSLog(@"%@", NSStringFromUIEdgeInsets(btn.imageEdgeInsets));
    NSLog(@"%@", NSStringFromUIEdgeInsets(btn.contentEdgeInsets));
    
    
    
    NSLog(@"----");
    NSLog(@"%@", NSStringFromCGRect(btn.titleLabel.frame));
    NSLog(@"%@", NSStringFromCGRect(btn.imageView.frame));
    
    
    
    
    
    [self.view addSubview:btn];
    
    
}


@end
