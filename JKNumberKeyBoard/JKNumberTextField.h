//
//  JKNumberTextField.h
//  eyb
//
//  Created by maitianer on 2017/6/21.
//  Copyright © 2017年 不易软件科技（上海）有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomKeyBoardView.h"

@class JKNumberTextField;
@protocol JKNumberTextFieldDelegate <NSObject>

- (void)textFieldDidChangeAnyValue:(JKNumberTextField *)textField andText:(NSString *)text;
- (void)textFieldDidComplete:(JKNumberTextField *)textField andText:(NSString *)text;

@end

@interface JKNumberTextField : UITextField<CustomKeyBoardViewDelegate>

@property (nonatomic, weak) id<JKNumberTextFieldDelegate> JKDelegate;

@end
