//
//  ViewController.m
//  Test001
//
//  Created by 鍾家豪 on 2017/10/11.
//  Copyright © 2017年 鍾家豪. All rights reserved.
//

#import "ViewController.h"
#define vW   self.view.frame.size.width
#define vHc  self.view.frame.size.height
#define IS_IPHONEX (([[UIScreen mainScreen] bounds].size.height-812)?NO:YES)
#define sH  (IS_IPHONEX?35:0)
#define vH  (IS_IPHONEX?vHc-70:vHc)

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    // 給iphone使用的main view,主要用於App主要介面
    
    UIView *MainView = [[UIView alloc]initWithFrame:CGRectMake(0,sH,vW,vH)];
    MainView.backgroundColor = [UIColor redColor];
    [self.view addSubview:MainView];
   
    UIView *UseView = [[UIView alloc]initWithFrame:CGRectMake(0,0,vW,vH)];
    UseView.backgroundColor = [UIColor greenColor];
    [MainView addSubview:UseView];
    return;
    
    // 給iphoneＸ使用的main view,主要用於App主要介面

    UIView *bottonView = [[UIView alloc]initWithFrame:CGRectMake(0,vHc-35,self.vW,35)];
    bottonView.backgroundColor  = [UIColor yellowColor];
    [self.view addSubview:bottonView];
    UIView *topView = [[UIView alloc]initWithFrame:CGRectMake(0,0,vW,35)];
    topView.backgroundColor  = [UIColor orangeColor];
    [self.view addSubview:topView];
    
}

- (void)viewWillAppear:(BOOL)animated {

    [super viewWillAppear:animated];
}
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
