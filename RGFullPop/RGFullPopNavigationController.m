//
//  RGFullPopNavigationController.m
//  RGFullPop
//
//  Created by yangrui on 2018/12/1.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import "RGFullPopNavigationController.h"

@interface RGFullPopNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation RGFullPopNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupFullPop];
}

- (void)setupFullPop{
    // 创建一个自己的Gesture 调用系统的Pop 方法
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
    panGesture.delegate = self;
    [self.view addGestureRecognizer:panGesture];
    
    //禁用系统的Pop 手势
    self.interactivePopGestureRecognizer.enabled = NO;
}

#pragma mark- UIGestureRecognizerDelegate
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer{
    
    return self.childViewControllers.count > 1;
}

@end
