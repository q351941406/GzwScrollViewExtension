//
//  ViewController.m
//  GzwTableViewLoading
//
//  Created by mac on 16/2/20.
//  Copyright © 2016年 GzwTableViewLoading. All rights reserved.
//

#import "ViewController.h"
#import "GzwTableViewLoading.h"
@interface ViewController ()
@property (nonatomic,strong) NSMutableArray *data;
@end

@implementation ViewController
-(NSMutableArray *)data
{
    if (!_data) {
        _data = [NSMutableArray array];
    }
    return _data;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 如果出现加载菊花和tableView重复出现的话，就设置FooterView，因为tableView默认对没有数据的列表也会显示cell
    self.tableView.tableFooterView = [UIView new];
    
    // 配置参数
//    self.tableView.buttonText = @"再次请求";
    
    
    
    // 点击响应
    [self.tableView gzwLoading:^{
        NSLog(@"再点我就肛你");
        [self loadData];
    }];
    
    [self loadData];
    
}
-(void)loadData
{
    // 模拟延迟
    self.tableView.loading = YES;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        for (int i = 0; i < 10; i++) {
#warning 打开注释再运行看看？
//            [self.data addObject:[NSString stringWithFormat:@"I'm data，fuck！"]];
        }
        if (self.data.count == 0) {
            self.tableView.loading = NO;
        }
        [self.tableView reloadData];
    });
}




-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.data.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ID"];
    cell.textLabel.text = self.data[indexPath.row];
    return cell;
}
@end
