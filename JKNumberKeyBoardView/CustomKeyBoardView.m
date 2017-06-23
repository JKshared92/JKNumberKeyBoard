//
//  CustomKeyBoardView.m
//  eyb
//
//  Created by maitianer on 2017/6/20.
//  Copyright © 2017年 不易软件科技（上海）有限公司. All rights reserved.
//

#import "CustomKeyBoardView.h"

#define JKKeyBoardBundle [NSBundle bundleForClass:[self class]]

@implementation CustomKeyBoardView

+ (instancetype)shareView {
    return [[JKKeyBoardBundle loadNibNamed:NSStringFromClass([CustomKeyBoardView class]) owner:self options:nil] objectAtIndex:0];
}

- (IBAction)deleteOneValue:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(customKeyBoardDeleteValue)]) {
        [self.delegate customKeyBoardDeleteValue];
    }
}

- (IBAction)didComplete:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(customKeyBoardComplete)]) {
        [self.delegate customKeyBoardComplete];
    }
}

- (IBAction)addNewValue:(UIButton *)sender {
    NSString *string;
    if (sender.tag == 121) {
        string = @".";
    }else {
        string = [NSString stringWithFormat:@"%ld",sender.tag%10];
    }
    if ([self.delegate respondsToSelector:@selector(customKeyBoardAddNewValue:)]) {
        [self.delegate customKeyBoardAddNewValue:string];
    }
}
@end
