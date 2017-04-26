//
//  ViewController.m
//  LYSLoadView
//
//  Created by jk on 2017/4/26.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import "ViewController.h"
#import "UIView+loading.h"

@interface ViewController ()

@property(nonatomic,strong)UIView * loadingView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.loadingView];
    [self.loadingView beginLoading:@{}];

    // Do any additional setup after loading the view, typically from a nib.
}


-(UIView*)loadingView{
    if (!_loadingView) {
        _loadingView = [[UIView alloc]initWithFrame:CGRectMake(0, 120, CGRectGetWidth(self.view.frame), 120)];
        _loadingView.backgroundColor = [UIColor lightGrayColor];
    }
    return _loadingView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
