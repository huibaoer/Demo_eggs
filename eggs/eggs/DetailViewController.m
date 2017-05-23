//
//  DetailViewController.m
//  eggs
//
//  Created by GrayLeo on 2017/2/20.
//  Copyright © 2017年 GrayLeo. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *redLabel;
@property (weak, nonatomic) IBOutlet UILabel *blueLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.redLabel.text = [self stringFromArray:self.redArray];
    self.blueLabel.text = [self stringFromArray:self.blueArray];
    
    
}

- (NSString *)stringFromArray:(NSArray *)array {
    //排序
    array = [array sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        if ([obj1 intValue] > [obj2 intValue]) {
            return NSOrderedDescending;
        } else if ([obj1 intValue] == [obj2 intValue]) {
            return NSOrderedSame;
        } else {
            return NSOrderedAscending;
        }
    }];
    
    NSMutableString *result = [NSMutableString string];
    for (int i = 0; i < array.count; i++) {
        [result appendString:[NSString stringWithFormat:@"%@", array[i]]];
        if (i != array.count-1) [result appendString:@"  "];
    }
    return result;
}

@end
