//
//  LJJCustomPickView.m
//  customPickView
//
//  Created by apple on 15/9/14.
//  Copyright (c) 2015年 李经晶. All rights reserved.
//

#import "LJJCustomPickView.h"

@implementation LJJCustomPickView
#pragma mark-按钮事件
- (IBAction)cancelSureBtnClicked:(UIButton *)sender {
    [self.delegate sureAndCancelBtnClicked:sender];
}

@end
