//
//  testView.m
//  testGitProj
//
//  Created by 杨佩 on 2020/9/7.
//  Copyright © 2020 易家杨. All rights reserved.
//

#import "testView.h"

@implementation testView

- (instancetype)initWithFrame:(CGRect)frame bgColor:(UIColor *)bgColor;
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = bgColor;
        
        [self performSelector:@selector(logMyself) withObject:nil afterDelay:5];
        
        
        NSLog(@"%s %@",__func__,[NSThread currentThread]);

    }
    return self;
}

- (void)logMyself
{
    NSLog(@"%s %d",__func__,__LINE__);
}

- (void)dealloc
{
    NSLog(@"%s %@",__func__,[NSThread currentThread]);

    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    NSLog(@"%s : %d",__func__,__LINE__);
    
}
@end
