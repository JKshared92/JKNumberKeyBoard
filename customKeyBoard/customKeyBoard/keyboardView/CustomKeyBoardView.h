//
//  CustomKeyBoardView.h
//  eyb
//
//  Created by maitianer on 2017/6/20.
//  Copyright © 2017年 不易软件科技（上海）有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomKeyBoardViewDelegate <NSObject>

@required
- (void)customKeyBoardComplete;

@optional
- (void)customKeyBoardDeleteValue;

- (void)customKeyBoardAddNewValue:(NSString *)value;

@end

@interface CustomKeyBoardView : UIView

+ (instancetype)shareView;

@property (weak, nonatomic) IBOutlet UILabel *pointLbl;
@property (weak, nonatomic) IBOutlet UIButton *pointBtn;

@property (nonatomic, weak) id<CustomKeyBoardViewDelegate> delegate;

@property (nonatomic, assign) BOOL point;

@end
