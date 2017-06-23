# JKNumberKeyBoard
自定义数字键盘，简单快捷

![image](https://github.com/JKshared92/JKNumberKeyBoard/blob/master/image/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202017-06-22%2017.17.01.png?raw=true)

只需在使用的地方<br>

#import "JKNumberTextField.h"<br>

创建输入框时用JKNumberTextField创建就好<br>

JKNumberTextField是继承UITextField，所以属性设置都不用变<br>

用[[JKNumberTextField alloc] init]创建，设置代理JKDelegate即可<br>

用法与UITextField一致

```
#import "JKNumberTextField.h"

//代理<JKNumberTextFieldDelegate>

{
    JKNumberTextField *textField = [[JKNumberTextField alloc] init];
    textField.JKDelegate = self;
    /** 创建用init，代理注意不要写成delegete了
     *  继承于YUTextField，设置属性就好，暂不支持xib和sb
     */
    textField.frame = CGRectMake(50, 200, 200, 30);
    textField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:textField];
}

//实现代理方法即可
/**点击收键盘时调用*/
- (void)textFieldDidComplete:(JKNumberTextField *)textField andText:(NSString *)text {
    [textField resignFirstResponder];
}

/**值变化时调用*/
- (void)textFieldDidChangeAnyValue:(JKNumberTextField *)textField andText:(NSString *)text {
        //这里的text不是变化的值，是textField的text
}
```

[可以去我的简书看看简单的使用方法](http://www.jianshu.com/p/8ca6eb44f6b8) 
