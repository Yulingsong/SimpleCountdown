//
//  ViewController.m
//  1
//
//  Created by yulingsong on 16/1/18.
//  Copyright © 2016年 yulingsong. All rights reserved.
//

#import "ViewController.h"
#import "UIView+YLSView.h"

@interface ViewController ()

@property (nonatomic,strong) UILabel *label;
@property (nonatomic,assign) int letfSecond;
@property (nonatomic,strong) NSString *m_currentTime;
@property (nonatomic,strong) NSTimer *timer;
@end

@implementation ViewController
@synthesize letfSecond,timer;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"test";
    UIView *view = [UIView viewAddImage:@"hold_no_data_logo" addInfo:@"你瞅啥！"];
    [self.view addSubview:view];
    
    self.letfSecond = 900;
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(daojishi) userInfo:nil repeats:YES];
    
    [self createLabel];
}

-(void)createLabel
{    
    self.label = [[UILabel alloc]init];
    [self.label setFrame:CGRectMake(0, 0, 375, 80)];
    [self.label setNumberOfLines:0];
    [self.label setTextAlignment:NSTextAlignmentCenter];
    [self.label setCenter:self.view.center];
    [self.label setBackgroundColor:[UIColor lightGrayColor]];
    [self.label setFont:[UIFont systemFontOfSize:11]];
    [self.view addSubview:self.label];
}

-(void)daojishi
{
    self.letfSecond --;
   
    if (letfSecond >0 && letfSecond <900)
    {
        if (letfSecond > 60)
        {
            int minute = letfSecond/60;
            int second = letfSecond%60;
            self.m_currentTime = [NSString stringWithFormat:@"%d:%02d",minute,second];
        }
        else
        {
            self.m_currentTime = [NSString stringWithFormat:@"%02d秒",letfSecond];
        }
    }
    else
    {
        self.m_currentTime = @"15分钟";
    }

    [self.label setText:[NSString stringWithFormat:@"订单在%@后自动撤销此单",self.m_currentTime]];
    if (self.letfSecond == 0)
    {
        [timer invalidate];
    }
}

@end
