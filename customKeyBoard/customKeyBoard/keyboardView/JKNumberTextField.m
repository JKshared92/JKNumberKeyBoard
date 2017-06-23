//
//  JKNumberTextField.m
//  eyb
//
//  Created by maitianer on 2017/6/21.
//  Copyright © 2017年 不易软件科技（上海）有限公司. All rights reserved.
//

#import "JKNumberTextField.h"

@interface JKNumberTextField ()

@end

@implementation JKNumberTextField

- (instancetype)init {
    self = [super init];
    if (self) {
        CustomKeyBoardView *keyBoard = [CustomKeyBoardView shareView];
        keyBoard.delegate = self;
        self.inputView = keyBoard;
    }
    return self;
}

- (void)customKeyBoardAddNewValue:(NSString *)value {
    if ([value isEqualToString:@"."]) {
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
    super.text = textStr;
    [self delegateForNewValue];
}

- (void)customKeyBoardDeleteValue {
    if (super.text.length <= 0) return;
    self.text = [self.text substringToIndex:self.text.length-1];
    [self delegateForNewValue];
}

- (void)customKeyBoardComplete {
    if ([self.JKDelegate respondsToSelector:@selector(textFieldDidComplete:andText:)]) {
        [self.JKDelegate textFieldDidComplete:self andText:super.text];
    }
}

- (void)delegateForNewValue {
    if ([self.JKDelegate respondsToSelector:@selector(textFieldDidChangeAnyValue:andText:)]) {
        [self.JKDelegate textFieldDidChangeAnyValue:self andText:self.text];
    }
}

@end
