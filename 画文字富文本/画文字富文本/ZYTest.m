//
//  ZYTest.m
//  画文字富文本
//
//  Created by 章芝源 on 16/1/4.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import "ZYTest.h"

@implementation ZYTest


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSString *str = @"aaaaaaaaa";
    
    NSMutableDictionary *attributDic = [NSMutableDictionary dictionary];
    attributDic[NSForegroundColorAttributeName] = [UIColor redColor];
    
    
    [str drawAtPoint:CGPointMake(0, 0) withAttributes:attributDic];
}


@end
