//
//  GamePad+Cheat.m
//  patternOfAdapter
//
//  Created by haijunyan on 2023/11/8.
//  Copyright © 2023 wupeng. All rights reserved.
//

#import "GamePad+Cheat.h"

@implementation GamePad (Cheat)
- (void)cheat {
    NSLog(@"GamePad (Cheat)");
    [self up];
    [self down];
    [self up];
    [self down];
    [self left];
    [self right];
    [self left];
    [self right];
    [self commandA];
    [self commandB];
    [self commandA];
    [self commandB];
}

//- (void)up {
//    NSLog(@"1234536478965432");
//}

@end
