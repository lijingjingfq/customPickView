//
//  ViewController.h
//  customPickView
//
//  Created by apple on 15/9/14.
//  Copyright (c) 2015年 李经晶. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LJJCustomPickView.h"
@interface ViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource,btnClickedPortocol>
{
    LJJCustomPickView*custom;
}

- (IBAction)btnClicked:(UIButton *)sender;

@end

