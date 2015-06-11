//
//  FiboFinder.m
//  FiboFinder
//
//  Created by Chris Gonzales on 6/2/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISFiboFinder.h"

@implementation FISFiboFinder

-(NSUInteger)fibonacciNumberAtIndex:(NSUInteger)index {
//    Fn0 = 0
//    Fn1 = 1
//    Fn2 = Fn1 + Fn2
//    [...]
//    FnN = Fn(N-1)+(Fn(N-2)
    if (index == 0)
        return 0;
    if (index == 1)
        return 1;

    NSMutableArray *fibSequence = [@[]mutableCopy];

    [fibSequence addObject:@0];
    [fibSequence addObject:@1];
    
    NSUInteger idx = 2;
    do {
        [fibSequence addObject:[NSNumber numberWithUnsignedInteger:([fibSequence[idx - 1] intValue] + [fibSequence[idx - 2] intValue])]];
        NSLog(@"fibSequence[%d] = %@", index, fibSequence[idx]);
        idx++;
    } while (idx <= index);
   
    NSLog(@"For index: %i, produced number %@", index, fibSequence[index]);
    return [fibSequence.lastObject intValue];
}

@end
