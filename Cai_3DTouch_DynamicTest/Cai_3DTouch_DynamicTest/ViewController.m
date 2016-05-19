//
//  ViewController.m
//  Cai_3DTouch_DynamicTest
//
//  Created by iMac on 16/5/18.
//  Copyright © 2016年 Cai. All rights reserved.
//

/*
 与集成静态的快捷操作项不同的是，集成动态的快捷操作项不需要配置info.plist文件。取而代之的是代码配置
 
 注意：需要强调的是，快捷操作项最多定义4个。就像苹果官方的比喻一样：这里一共就有4个插槽，也就是最多显示4个快捷操作项。程序优先加载info.plist文件中定义的静态快捷操作项，如果info.plist中的静态快捷操作项不足4个才会去加载代码定义的动态快捷操作项（前提是代码中定义了动态快捷操作项）来补充剩余的插槽。
 */

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, self.view.center.y - 20, self.view.frame.size.width - 40, 20)];
    label.textAlignment = NSTextAlignmentCenter;
    label.textColor = [UIColor purpleColor];
    label.text = @"测试3DTouch功能-dynamic quick actions";
    label.numberOfLines = 0;
    label.font = [UIFont systemFontOfSize:18];
    [self.view addSubview:label];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
