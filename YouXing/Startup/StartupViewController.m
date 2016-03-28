//
//  StartupViewController.m
//  YouXing
//
//  Created by iHome on 16/3/27.
//  Copyright © 2016年 wenba. All rights reserved.
//

#import "StartupViewController.h"

@interface StartupViewController () <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *imageScrollView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentViewWidth;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation StartupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES];
    [self initImageScrollView];
}

- (void)initImageScrollView {
    [self.view layoutIfNeeded];
    
    self.contentViewWidth.constant = kFBaseWidth * 5;
    for (int i = 0; i < 5; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(i * kFBaseWidth, 0, kFBaseWidth, kFBaseHeight)];
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"startup_back_%@", @((i + 1) % 3)]];
        [self.contentView addSubview:imageView];
    }
    self.imageScrollView.contentOffset = CGPointMake(kFBaseWidth, 0);
}

#pragma mark - UIScrollViewDelegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    CGFloat offsetX = scrollView.contentOffset.x;
    if (scrollView.contentOffset.x < kFBaseWidth) {
        offsetX += kFBaseWidth * 3;
        [scrollView setContentOffset:CGPointMake(offsetX, 0)];
    } else if (scrollView.contentOffset.x > kFBaseWidth * 4) {
        offsetX -= kFBaseWidth * 3;
        [scrollView setContentOffset:CGPointMake(offsetX, 0)];
    }
    self.pageControl.currentPage = offsetX / kFBaseWidth - 1;
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
