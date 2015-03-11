//
//  KWSayingViewController.m
//  justsaying
//
//  Created by Kamila Wojciechowska on 14.01.2015.
//  Copyright (c) 2015 silk. All rights reserved.
//

#import "KWSayingViewController.h"

@interface KWSayingViewController ()

@end

@implementation KWSayingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sayingTextView.textContainerInset = UIEdgeInsetsMake(40, 20, 0, 20);
    self.sayingTextView.text = self.sayingText;
    self.sayingTextView.textColor = [UIColor whiteColor];
    self.sayingTextView.font = [UIFont systemFontOfSize:22];
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
