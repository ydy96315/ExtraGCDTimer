//
//  ExtraGCDTimer.h
//  ExtraGCDTimerDemo
//
//  Created by 叶达逸 on 2018/8/2.
//  Copyright © 2018年 叶达逸. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExtraGCDTimer : NSObject

+ (NSString *)execTask:(void(^)(void))task
                 start:(NSTimeInterval)start
              interval:(NSTimeInterval)interval
               repeats:(BOOL)repeats
                 async:(BOOL)async;

+ (NSString *)execTask:(id)target
              selector:(SEL)selector
                 start:(NSTimeInterval)start
              interval:(NSTimeInterval)interval
               repeats:(BOOL)repeats
                 async:(BOOL)async;

+ (void)cancelTask:(NSString *)name;

@end
