//
//  UIView+YLSView.m
//  1
//
//  Created by yulingsong on 16/1/18.
//  Copyright © 2016年 yulingsong. All rights reserved.
//

#import "UIView+YLSView.h"

@implementation UIView (YLSView)

+(UIView *)viewAddImage:(NSString *)imageName addInfo:(NSString *)Info
{
    UIView *view = [[UIView alloc]init];
    [view setFrame:CGRectMake(0, 0, 375, 667)];
    [view setBackgroundColor:[UIColor whiteColor]];
    
    UIImageView *imageView = [[UIImageView alloc]init];
    [imageView setFrame:CGRectMake(127.5, 132, 120, 121)];
    [imageView setImage:[UIImage imageNamed:imageName]];
    
    UILabel *label = [[UILabel alloc]init];
    [label setFrame:CGRectMake(0, 273, 375, 16)];
    [label setTextColor:[UIColor lightGrayColor]];
    [label setTextAlignment:NSTextAlignmentCenter];
    [label setText:Info];
    
    [view addSubview:imageView];
    [view addSubview:label];
    return view;
}

@end
