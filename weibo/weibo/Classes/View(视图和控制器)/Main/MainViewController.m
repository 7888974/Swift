//
//  MainViewController.m
//  weibo
//
//  Created by ShiroJoy on 2020/11/20.
//  Copyright © 2020 yhw. All rights reserved.
//

#import "MainViewController.h"
#import "HomeViewController.h"
#import "DiscoverViewController.h"
#import "MessageViewController.h"
#import "ProfileViewController.h"
#import "Masonry.h"

@interface MainViewController ()
@property (nonatomic, strong) UIButton *composedBtn;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = UIColor.whiteColor;
    [self addChildViewControllers];
    [self setupComposedBtn];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    //将按钮放到最上层
    [self.tabBar bringSubviewToFront:self.composedBtn];
}

-(UIButton *)composedBtn{
    if (!_composedBtn) {
        _composedBtn = [[UIButton alloc] init];
        _composedBtn.backgroundColor = UIColor.grayColor;
        [_composedBtn setImage:[UIImage systemImageNamed:@"plus.rectangle"] forState:(UIControlStateNormal)];
        
    }
    return _composedBtn;
}

#pragma mark -设置界面

-(void)setupComposedBtn{
    [self.tabBar addSubview:self.composedBtn];
    
    NSInteger count = self.childViewControllers.count;
    float w = self.tabBar.bounds.size.width / count;
    self.composedBtn.frame = CGRectInset(self.tabBar.bounds, 2 * w, 0);
}

-(void)addChildViewControllers{
    
    HomeViewController *home = HomeViewController.new;
    DiscoverViewController *dis = DiscoverViewController.new;
    MessageViewController *message = MessageViewController.new;
    ProfileViewController *pro = ProfileViewController.new;
    
    [self addChildViewControllers:home title:@"首页" imageName:@"1.circle"];
    [self addChildViewControllers:dis title:@"发现" imageName:@"2.circle"];
    [self addChildViewController:[UIViewController alloc]];
    [self addChildViewControllers:message title:@"消息" imageName:@"3.circle"];
    [self addChildViewControllers:pro title:@"我" imageName:@"4.circle"];
}

-(void)addChildViewControllers:(UIViewController *)VC
                         title:(NSString *)title
                     imageName:(NSString *)imageName
{
    
    VC.title = title;
    VC.tabBarItem.image = [UIImage systemImageNamed:imageName];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:VC];
    [self addChildViewController:nav];
    
    
}




@end
