//
//  JKNumberTextField.m
//  eyb
//
//  Created by maitianer on 2017/6/21.
//  Copyright © 2017年 不易软件科技（上海）有限公司. All rights reserved.
//

#import "JKNumberTextField.h"

@interface JKNumberTextField ()

@property (nonatomic, strong) CustomKeyBoardView *keyboard;

@end

@implementation JKNumberTextField

- (CustomKeyBoardView *)keyboard {
    if (!_keyboard) {
        _keyboard = [CustomKeyBoardView shareView];
        _keyboard.delegate = self;
    }
    return _keyboard;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.inputView = self.keyboard;
    }
    return self;
}

- (void)setPoint:(BOOL)point {
    _point = point;
    self.keyboard.point = point;
}

- (void)customKeyBoardAddNewValue:(NSString *)value {
    if ([value isEqualToString:@"."]) {
        if (!self.point) {
            return;
        }
        if (self.text.length == 0) {
            self.text = @"0.";
            [self delegateForNewValue];
            return;
        }
        if ([self.text rangeOfString:@"."].location != NSNotFound) {
            return;
        }
    }
    
    NSMutableString *textStr = [NSMutableString stringWithString:self.text];
    [textStr appendString:value];
    self.text = textStr;
    [self delegateForNewValue];
}

- (void)customKeyBoardDeleteValue {
    if (self.text.length <= 0) return;
    self.text = [self.text substringToIndex:self.text.length-1];
    [self delegateForNewValue];
}

- (void)customKeyBoardComplete {
    [self resignFirstResponder];
    if ([self.JKDelegate respondsToSelector:@selector(textFieldDidComplete:andText:)]) {
        [self.JKDelegate textFieldDidComplete:self andText:self.text];
    }
}

- (void)delegateForNewValue {
    if ([self.JKDelegate respondsToSelector:@selector(textFieldDidChangeAnyValue:andText:)]) {
        [self.JKDelegate textFieldDidChangeAnyValue:self andText:self.text];
    }
}

@end
