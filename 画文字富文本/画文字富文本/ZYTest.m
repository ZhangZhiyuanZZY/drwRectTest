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
    //剪裁
    UIRectClip(CGRectMake(0, 0, 100, 100));
    //绘制图片
    UIImage *image1 = [UIImage imageNamed:@"头像"];
//    [image1 drawAsPatternInRect:rect];
//    [image1 drawAtPoint:CGPointZero];
    [image1 drawInRect:rect];

}

- (void)drawText
{
    // Drawing code
    NSString *str = @"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
    
    NSMutableDictionary *attributDic = [NSMutableDictionary dictionary];
    attributDic[NSForegroundColorAttributeName] = [UIColor redColor];
    attributDic[NSFontAttributeName] = [UIFont systemFontOfSize:25];
    
    //区别
        [str drawAtPoint:CGPointMake(0, 0) withAttributes:attributDic];
//    [str drawInRect:rect withAttributes:attributDic];
}



@end
