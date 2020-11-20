//
//  VisitorTableViewController.m
//  weibo
//
//  Created by ShiroJoy on 2020/11/20.
//  Copyright © 2020 yhw. All rights reserved.
//

#import "VisitorTableViewController.h"
#import "VisitorView.h"

@interface VisitorTableViewController ()
@property (nonatomic, assign) BOOL isVisitor;
@end

@implementation VisitorTableViewController

- (void)loadView{
    
    self.isVisitor = true;
    
    self.isVisitor ? [self setupVisitorView] : [super loadView];
    
    
}


/// 设置访客视图
-(void)setupVisitorView{
    
    VisitorView *view = VisitorView.new;
    self.view = view;
}


@end
