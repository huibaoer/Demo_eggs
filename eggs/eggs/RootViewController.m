//
//  RootViewController.m
//  eggs
//
//  Created by GrayLeo on 2017/2/20.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import "RootViewController.h"
#import "DetailViewController.h"

@interface RootViewController ()


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
  
}

- (void)viewWillAppear:(BOOL)animated {
    self.navigationController.navigationBarHidden = YES;
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    self.navigationController.navigationBarHidden = NO;
    [super viewWillDisappear:animated];
}

- (NSArray *)getNumbersWithMax:(int)max count:(int)count {
    NSMutableArray *result = [NSMutableArray array];
    while (result.count < count) {
        int num = arc4random()%max + 1;
        if (![result containsObject:@(num)]) {
            [result addObject:@(num)];
        }
    }
    return result;
}

- (IBAction)doubleColorBallAction:(id)sender {
    NSArray *redArray = [self getNumbersWithMax:33 count:6];
    NSArray *blueArray = [self getNumbersWithMax:16 count:1];
    
    DetailViewController *detail = [[DetailViewController alloc] init];
    detail.navigationItem.title = @"双色球";
    detail.redArray = redArray;
    detail.blueArray = blueArray;
    [self.navigationController pushViewController:detail animated:YES];
}

- (IBAction)bigHappyAction:(id)sender {
    NSArray *redArray = [self getNumbersWithMax:35 count:5];
    NSArray *blueArray = [self getNumbersWithMax:12 count:2];

    DetailViewController *detail = [[DetailViewController alloc] init];
    detail.navigationItem.title = @"大乐透";
    detail.redArray = redArray;
    detail.blueArray = blueArray;
    [self.navigationController pushViewController:detail animated:YES];
}


@end
