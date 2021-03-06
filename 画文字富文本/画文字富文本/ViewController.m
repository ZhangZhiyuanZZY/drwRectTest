//
//  ViewController.m
//  画文字富文本
//
//  Created by 章芝源 on 16/1/4.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZYTest *tesss = [[ZYTest alloc]init];
    tesss.frame = CGRectMake(0, 0, 300, 300);
    tesss.backgroundColor = [UIColor grayColor];
    [self.view addSubview:tesss];

    //设置阴影
    NSShadow *shadow = [[NSShadow alloc]init];
    shadow.shadowOffset = CGSizeMake(5, 5);
    //阴影模糊度
    shadow.shadowBlurRadius = 5.0;
    NSMutableDictionary *dictM = [NSMutableDictionary dictionary];
    dictM[NSShadowAttributeName] = shadow;
    UILabel *ZYLabel = [[UILabel alloc]init];
    ZYLabel.frame = CGRectMake(300, 0, 100, 100);
    [self.view addSubview:ZYLabel];
//    ZYLabel.attributedText = [[NSAttributedString alloc]initWithString:@"xasdadadad" attributes:dictM];
    NSAttributedString *zzzzz = [[NSAttributedString alloc]initWithString:@"xasdadadad" attributes:dictM];

    
    //设置图文混排
    NSTextAttachment *attach = [[NSTextAttachment alloc]init];
    attach.image = [UIImage imageNamed:@"vip"];
    NSAttributedString *attributeString = [NSAttributedString attributedStringWithAttachment:attach];
    UILabel *secondLb = [[UILabel alloc]init];
    secondLb.backgroundColor = [UIColor yellowColor];
    secondLb.frame = CGRectMake(0, 300, 100, 100);
    [self.view addSubview:secondLb];
    NSMutableAttributedString *attributeStringM = [[NSMutableAttributedString alloc]initWithAttributedString:attributeString];
    [attributeStringM appendAttributedString:zzzzz];
    secondLb.attributedText = attributeStringM;
}

@end
