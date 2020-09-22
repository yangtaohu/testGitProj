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
    NSLog(@"everyBody 在他头上暴扣");

    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.testV removeFromSuperview];
        self.testV = nil;
    });

  NSLog(@"%s : %d",__func__,__LINE__);
}

//增加一行


@end
