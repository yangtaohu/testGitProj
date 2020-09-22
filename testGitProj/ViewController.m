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



}

//增加一行


@end
