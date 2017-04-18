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
    
    
    
    
    UISwipeGestureRecognizer * sw1 = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(changeColor:)];
    sw1.direction =UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:sw1];
    
    
    UISwipeGestureRecognizer * sw2 = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(changeColor:)];
    sw2.direction =UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:sw2];
    
    UISwipeGestureRecognizer * sw3 = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(changeColor:)];
    sw3.direction =UISwipeGestureRecognizerDirectionUp;
    [self.view addGestureRecognizer:sw3];
    
    
    UISwipeGestureRecognizer * sw4 = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(changeColor:)];
    sw4.direction =UISwipeGestureRecognizerDirectionDown;
    [self.view addGestureRecognizer:sw4];
    
    
    
    
    
}
-(void)changeColor:(UISwipeGestureRecognizer *)sw{
    
    if (sw.direction == UISwipeGestureRecognizerDirectionRight) {
        
    }
    if (sw.direction == UISwipeGestureRecognizerDirectionLeft) {
        
    }
    if (sw.direction == UISwipeGestureRecognizerDirectionUp) {
        
    }
    if (sw.direction == UISwipeGestureRecognizerDirectionDown) {
        
    }
    
    
    
}



@end
