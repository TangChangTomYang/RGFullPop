//
//  ViewController.m
//  RGFullPop
//
//  Created by yangrui on 2018/12/1.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)right:(id)sender {
    
    [self.navigationController pushViewController:[ViewController new] animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithTitle:@"push" style:0 target:self action:@selector(right:)];
    self.navigationItem.rightBarButtonItem = right;
    
    self.view.backgroundColor = [UIColor redColor];
    
    self.navigationItem.title = [NSString stringWithFormat:@"%ld",self.navigationController.childViewControllers.count];
    
    
    
    UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithTitle:@"left" style:0 target:self action:@selector(right:)];
    self.navigationItem.leftBarButtonItem = left;
}


@end
