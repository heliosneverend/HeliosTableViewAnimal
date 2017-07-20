//
//  ViewController.m
//  HeliosTableViewAnimal
//
//  Created by beyo-zhaoyf on 2017/7/20.
//  Copyright © 2017年 beyo-zhaoyf. All rights reserved.
//

#import "ViewController.h"
#import "HeliosDomeCell.h"
#import "HeliosAnimationTableView.h"
#define Screen_Width ([[UIScreen mainScreen] bounds].size.width)
#define Screen_Height ([[UIScreen mainScreen] bounds].size.height)

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    HeliosAnimationTableView *_aTableView;
    NSMutableArray *_dataArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self makeUI];
    [self setDataSource];
    
}
- (void)setDataSource {
    _dataArray = [[NSMutableArray alloc]init];
    NSArray *array = @[@"喜欢吃小手是宝宝的合理需求",@"襁褓中的婴儿，真的不易感冒吗",@"补钙与否看奶量，也别忽略维生素D",@"快乐安全学翻",@"宝宝衣物，细心检查，宝宝衣物，细心检查",@"听力筛查，别忘做",@"设标本兼治，护理鹅口疮置",@"退标本兼治，护理鹅口疮出标本兼治，护理鹅口疮登录",@"喜欢吃小手是宝宝的合理需求",@"襁褓中的婴儿，真的不易感冒吗",@"补钙与否看奶量，也别忽略维生素D",@"快乐安全学翻",@"宝宝衣物，细心检查，宝宝衣物，细心检查",@"听力筛查，别忘做",@"设标本兼治，护理鹅口疮置",@"退标本兼治，护理鹅口疮出标本兼治，护理鹅口疮登录",@"喜欢吃小手是宝宝的合理需求",@"襁褓中的婴儿，真的不易感冒吗",@"补钙与否看奶量，也别忽略维生素D",@"快乐安全学翻",@"宝宝衣物，细心检查，宝宝衣物，细心检查",@"听力筛查，别忘做",@"设标本兼治，护理鹅口疮置",@"退标本兼治，护理鹅口疮出标本兼治，护理鹅口疮登录"];
    _dataArray = [NSMutableArray arrayWithArray:array];
    [_aTableView reloadData];

}
- (void)makeUI {
    _aTableView = [[HeliosAnimationTableView alloc]initWithFrame:CGRectMake(0, 0, Screen_Width, Screen_Height) ];
    _aTableView.delegate = self;
    _aTableView.dataSource = self;
    _aTableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    [self.view addSubview:_aTableView];
}
#pragma mark - UITableViewDelegates

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80.0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    HeliosDomeCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ID"];
    if (cell == nil) {
        cell = [[HeliosDomeCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID"];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    if(_dataArray.count > 0){
        [cell setValueWithTitle:_dataArray[indexPath.row]];
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    [_aTableView appearCell:cell andScale:0.5];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
