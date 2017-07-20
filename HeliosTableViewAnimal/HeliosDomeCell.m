//
//  HeliosDomeCell.m
//  HeliosTableViewAnimal
//
//  Created by beyo-zhaoyf on 2017/7/20.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import "HeliosDomeCell.h"
#define Screen_Width ([[UIScreen mainScreen] bounds].size.width)
#define HeliosRandomColor [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0]
@interface HeliosDomeCell()
{
    UILabel *_titleLab;
}
@end
@implementation HeliosDomeCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self bye_makeUI];
    }
    return self;
}

- (void)bye_makeUI {
    self.backgroundColor = HeliosRandomColor;
    _titleLab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0,Screen_Width , 80)];
    _titleLab.font = [UIFont systemFontOfSize:30.0];
    _titleLab.textColor = [UIColor blueColor];
    [self addSubview:_titleLab];
}
- (void)setValueWithTitle:(NSString *)title {
    _titleLab.text = title;
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
