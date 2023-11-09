//
//  GamePad.h
//  patternOfAdapter
//
//  Created by haijunyan on 2023/11/8.
//  Copyright © 2023 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GamePad : NSObject
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

@end
