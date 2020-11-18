//
//  ViewController.m
//  OCC
//
//  Created by ShiroJoy on 2020/11/12.
//  Copyright © 2020 yhw. All rights reserved.
//

#import "TabViewController.h"
#import "Person.h"
#import "TableViewCell.h"

@interface TabViewController ()
@property (nonatomic ,strong) NSArray *dataList;
@end

@implementation TabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view
    
//    self.tableView.separatorStyle = UITableViewCellSeparatorStyl;
    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"cell"];
    
    [self loadData:^(NSArray *arr) {
        self.dataList = arr;

        [self.tableView reloadData];
    }];
    
    
}


-(void)loadData:(void (^)(NSArray *arr))block
{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"耗时操作");
        NSMutableArray *arrs = [[NSMutableArray alloc] init];
        for (int i = 0; i < 50; i ++) {
            Person *p = Person.new;
            p.age = i;
            p.name = [@"小明" stringByAppendingFormat:@"%d",i];
            [arrs addObject:p];
        }
        
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"操作完成");
            block(arrs);
            
        });
    });
}



//这个才是行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"CellForRowAtIndexPath");
    
    
     //   使用系统重用机制会导致显示错误：已经加载出的row滑动出屏幕显示时回收供其他新row使用，其属性被重置
    
//    NSString *reuseID = [NSString stringWithFormat:@"cell%ld",indexPath.row];
//    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
////    cell.personModel = self.dataList[indexPath.row];
//    if (!cell) {
//        cell = [[TableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"cell"];
//
//    }
//    cell.personModel = self.dataList[indexPath.row];
    //不使用系统重用机制
//    TableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//    if (!cell) {
//        cell = [[TableViewCell alloc] initWithStyle:(UITableViewCellStyleDefault) reuseIdentifier:@"cell"];
//    }
//    cell.personModel = _dataList[indexPath.row];
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.personModel = _dataList[indexPath.row];
    
    return cell;
}


@end
