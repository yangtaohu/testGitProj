//
//  ViewController.m
//  testGitProj
//
//  Created by 易家杨 on 2020/9/7.
//  Copyright © 2020 易家杨. All rights reserved.
//

#import "ViewController.h"
#import "testView.h"

@interface ViewController ()
@property (nonatomic, strong) testView *testV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    self.testV = [[testView alloc]initWithFrame:CGRectMake(100, 100, 200, 200) bgColor:[UIColor purpleColor]];
    [self.view addSubview:self.testV];
    
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.testV removeFromSuperview];
        self.testV = nil;
    });

    //test1
    //[2]

    NSLog(@"第二次提交");
    NSLog(@"第3次提交");
//哈哈哈哈
    //hei yo pretty girl
//hey baby
    
}

//增加一行


@end
