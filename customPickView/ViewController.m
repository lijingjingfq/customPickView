//
//  ViewController.m
//  customPickView
//
//  Created by apple on 15/9/14.
//  Copyright (c) 2015年 李经晶. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnClicked:(UIButton *)sender {
   custom=[[[NSBundle mainBundle] loadNibNamed:@"LJJCustomPickView" owner:self options:nil] lastObject];
   custom.dataSourceArr=@[@{@"content":@"李四"},@{@"content":@"张三"},@{@"content":@"王五"}];
   custom.frame=self.view.bounds;
    custom.delegate=self;
    [self.view addSubview:custom];
   // [LJJCustomPickView showInView:self.view];
    
}
#pragma mark-UIPickerView delegate methods
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return custom.dataSourceArr.count;
}
-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return custom.dataSourceArr[row][@"content"];
}
#pragma mark-btnClickedProtocol
-(void)sureAndCancelBtnClicked:(UIButton *)sender
{
    switch (sender.tag) {
        case 10000:
        {
        
        }
            break;
        case 10001:
        {
        
        }
            break;
        default:
            break;
    }
}
@end
