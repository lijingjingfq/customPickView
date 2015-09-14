//
//  LJJCustomPickView.h
//  customPickView
//
//  Created by apple on 15/9/14.
//  Copyright (c) 2015年 李经晶. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol btnClickedPortocol <NSObject>

-(void)sureAndCancelBtnClicked:(UIButton*)sender;

@end
@interface LJJCustomPickView : UIView
{
    LJJCustomPickView*custom;
}
@property(assign,nonatomic)id<btnClickedPortocol>delegate;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UIPickerView *pickView;
@property (strong, nonatomic) IBOutlet NSArray*dataSourceArr;
- (IBAction)cancelSureBtnClicked:(UIButton *)sender;
@end
