//
//  EXPassViewController.m
//  YouXing
//
//  Created by Ron on 16/4/4.
//  Copyright © 2016年 wenba. All rights reserved.
//  3.2.2 训练－关卡页

#import "EXPassViewController.h"

@interface EXPassViewController ()

@end

@implementation EXPassViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

#pragma mark - Events

- (void)onClickPassLevel:(NSInteger)passLevel {
    [self performSegueWithIdentifier:@"gotoPrepareView" sender:@(passLevel)];
}

@end
