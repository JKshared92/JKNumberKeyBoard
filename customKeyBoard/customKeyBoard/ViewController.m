//
//  ViewController.m
//  customKeyBoard
//
//  Created by maitianer on 2017/6/22.
//  Copyright © 2017年 JK杰. All rights reserved.
//

#import "ViewController.h"
#import "JKNumberTextField.h"

@interface ViewController ()<JKNumberTextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    JKNumberTextField *textField = [[JKNumberTextField alloc] init];
    textField.JKDelegate = self;
    /** 创建用init，代理注意不要写成delegete了
     *  继承于YUTextField，设置属性就好，暂不支持xib和sb
     */
    textField.frame = CGRectMake(50, 200, 200, 30);
    textField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:textField];
}

/**点击收键盘时调用*/
- (void)textFieldDidComplete:(JKNumberTextField *)textField andText:(NSString *)text {
    [textField resignFirstResponder];
}

/**值变化时调用*/
- (void)textFieldDidChangeAnyValue:(JKNumberTextField *)textField andText:(NSString *)text {
    
}

@end
