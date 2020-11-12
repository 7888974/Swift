//
//  ViewController.m
//  OCC
//
//  Created by ShiroJoy on 2020/11/12.
//  Copyright © 2020 yhw. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "TableViewCell.h"

@interface ViewController ()
@property (nonatomic ,strong) NSArray *dataList;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view
    
    
//    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"cell"];
    
//    [self loadData:^(NSArray *arr) {
//        self.dataList = arr;
//        
//    }];
//    [self.tableView reloadData];
    
    
}


-(void)loadData:(void (^)(NSArray *arr))block
{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"耗时操作");
        NSMutableArray *arrs = [[NSMutableArray alloc] init];
        for (int i = 0; i < 20; i ++) {
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
    
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.dicName = self.dataList[indexPath.row];
    return cell;
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}


@end
