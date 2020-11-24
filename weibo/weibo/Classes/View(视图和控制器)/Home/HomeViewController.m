//
//  HomeViewController.m
//  weibo
//
//  Created by ShiroJoy on 2020/11/20.
//  Copyright © 2020 yhw. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    
    NSDictionary *dic = @{@"user":@"yhw",@"user_name":@"yhw",@"password":@"123456",@"phone_num":@"15530328679",@"code":@""};
    
    NSDictionary *dic1 = @{@"phone_num":@"15530328679",@"phone":@"15530328679"};
    
    
    [[NetworkTools sharedTools] request:@"phone/register" parameters:dic1];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
