//
//  HomePageListCell.m
//  ShoppingMall
//
//  Created by Codeguesser on 2014/1/26.
//  Copyright (c) 2014年 Macie. All rights reserved.
//

#import "HomePageListCell.h"

@implementation HomePageListCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)initWithMall:(MockMall *)mall {
    name.text = [mall mallName];
    // Change the logo if the mall is sogo
    if ([name.text isEqualToString:@"庄胜崇光"])
    {
        UIImage *sogoImg = [UIImage imageNamed:@"sogo.png"];
        [MallImg setImage:sogoImg];
    }
    if ([name.text isEqualToString:@"欧美汇"])
    {
        UIImage *ecMallImg = [UIImage imageNamed:@"ecmall.jpg"];
        [MallImg setImage:ecMallImg];
    }
    if ([name.text isEqualToString:@"北京APM"])
    {
        UIImage *ecMallImg = [UIImage imageNamed:@"apm.jpg"];
        [MallImg setImage:ecMallImg];
    }
    if ([name.text isEqualToString:@"未来广场"])
    {
        UIImage *ecMallImg = [UIImage imageNamed:@"future.jpg"];
        [MallImg setImage:ecMallImg];
    }
    if ([name.text isEqualToString:@"蓝色港湾"])
    {
        UIImage *ecMallImg = [UIImage imageNamed:@"solana.jpg"];
        [MallImg setImage:ecMallImg];
    }
    if ([name.text isEqualToString:@"太古理"])
    {
        UIImage *ecMallImg = [UIImage imageNamed:@"village.jpg"];
        [MallImg setImage:ecMallImg];
    }
    if ([name.text isEqualToString:@"太古理"])
    {
        UIImage *ecMallImg = [UIImage imageNamed:@"village.jpg"];
        [MallImg setImage:ecMallImg];
    }
    if ([name.text isEqualToString:@"东方银座"])
    {
        UIImage *ecMallImg = [UIImage imageNamed:@"ginza.jpg"];
        [MallImg setImage:ecMallImg];
    }
    if ([name.text isEqualToString:@"世贸天阶"])
    {
        UIImage *ecMallImg = [UIImage imageNamed:@"place.jpg"];
        [MallImg setImage:ecMallImg];
    }
    if ([name.text isEqualToString:@"颐堤港"])
    {
        UIImage *ecMallImg = [UIImage imageNamed:@"indigo.jpg"];
        [MallImg setImage:ecMallImg];
    }
    if ([name.text isEqualToString:@"太古里"])
    {
        UIImage *ecMallImg = [UIImage imageNamed:@"taikooli.jpg"];
        [MallImg setImage:ecMallImg];
    }
    
    
    

    address.text = [mall mallAddress];
    points.text = [NSString stringWithFormat:@"%d分", [mall getBonusPoints]];
    distance.text = [mall distance];
}

@end
