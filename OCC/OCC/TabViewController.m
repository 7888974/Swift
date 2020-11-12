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
    
    
//    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"cell"];
    
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
        for (int i = 0; i < 200; i ++) {
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


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return self.dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"CellForRowAtIndexPath");
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.dicName = self.dataList[indexPath.row];
    return cell;
}


@end
