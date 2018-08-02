//
//  ViewController.m
//  ExtraGCDTimerDemo
//
//  Created by 叶达逸 on 2018/8/2.
//  Copyright © 2018年 叶达逸. All rights reserved.
//

#import "ViewController.h"
#import "ExtraGCDTimer.h"

@interface ViewController ()
@property (copy, nonatomic) NSString *task;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.task = [ExtraGCDTimer execTask:^{
//        NSLog(@"doTask - %@", [NSThread currentThread]);
//    } start:2.0
//                               interval:1.0
//                                repeats:YES
//                                  async:YES];
    
    
    self.task = [ExtraGCDTimer execTask:self
                         selector:@selector(doTask)
                            start:2.0
                         interval:1.0
                          repeats:YES
                            async:YES];
    
    
   
    
}
- (void)doTask
{
    NSLog(@"doTask - %@", [NSThread currentThread]);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [ExtraGCDTimer cancelTask:self.task];
}


@end
