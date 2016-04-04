//
//  EXPrepareViewController.m
//  YouXing
//
//  Created by Ron on 16/4/4.
//  Copyright © 2016年 wenba. All rights reserved.
//  3.2.3 训练－准备页（待命）

#import "EXPrepareViewController.h"
#import "EXPrepareTableViewCell.h"

@interface EXPrepareViewController ()
@property (weak, nonatomic) IBOutlet UITableView *ListTableView;

@end

@implementation EXPrepareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    EXPrepareTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[EXPrepareTableViewCell description] forIndexPath:indexPath];
    return cell;
}

@end
