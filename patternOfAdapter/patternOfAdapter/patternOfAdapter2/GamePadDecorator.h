//
//  GamePadDecorator.h
//  patternOfAdapter
//
//  Created by haijunyan on 2023/11/8.
//  Copyright © 2023 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GamePadDecorator : NSObject
//已存在API基本使用
/**
 *  上下左右的操作
 */
- (void)up;
- (void)down;
- (void)left;
- (void)right;

/**
 *  选择与开始的操作
 */
- (void)select;
- (void)start;

/**
 *  按钮 A + B + X + Y
 */
- (void)commandA;
- (void)commandB;
- (void)commandX;
- (void)commandY;

//额外补充 组合衍生(类似catagory作用)
/**
 *  按钮 cheat
 */
- (void)cheat;

@end

