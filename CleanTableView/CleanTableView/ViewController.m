//
//  ViewController.m
//  CleanTableView
//
//  Created by Zhanghua on 16/4/22.
//  Copyright © 2016年 OlivierZhang. All rights reserved.
//

#import "ViewController.h"
#import "ArrayDataSource.h"
#import "OZTableViewCell.h"
#import "OZModel.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()
@property (nonatomic, strong) ArrayDataSource *arrayDataSource;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //准备数据
    NSMutableArray *dataSource = [NSMutableArray array];
    for (int i = 0; i < 5; i++) {
        OZModel *model = [[OZModel alloc] init];
        model.text = [NSString stringWithFormat:@"%d",i];
        [dataSource addObject:model];
    }
    
    //初始化Table View
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)
                                                          style:UITableViewStylePlain];
    [tableView registerNib:[UINib nibWithNibName:@"OZTableViewCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:tableView];
    
    //设置block
    TableViewCellConfigureBlock block = ^(OZTableViewCell *cell, OZModel *model){
        [cell fillWithModel:model];
    };
    
    self.arrayDataSource = [[ArrayDataSource alloc] initWithModels:dataSource
                                                    cellIdentifier:@"cell"
                                                    ConfigureBolck:block];
    
    //设置dataSource
    tableView.dataSource = self.arrayDataSource;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
