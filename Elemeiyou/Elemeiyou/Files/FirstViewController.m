//
//  FirstViewController.m
//  Elemeiyou
//
//  Created by thinkive on 2019/2/25.
//  Copyright © 2019年 thinkive. All rights reserved.
//

#import "FirstViewController.h"

#import <Masonry.h>

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UIView *rectangle = [[UIView alloc] init];
    rectangle.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:rectangle];

    [rectangle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.height.mas_equalTo(100);
    }];
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

@end
