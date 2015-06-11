//
//  FiboFinder.m
//  FiboFinder
//
//  Created by Chris Gonzales on 6/2/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISFiboFinder.h"

@implementation FISFiboFinder

//define methods here
-(NSUInteger)fibonacciNumberAtIndex:(NSUInteger)index {
//    Fn0 = 0
//    Fn1 = 1
//    Fn2 = Fn1 + Fn2
//    [...]
//    FnN = Fn(N-1)+(Fn(N-2)
    NSMutableArray *fibSequence = [NSMutableArray arrayWithCapacity:index];
    
    fibSequence[0] = @0;
    fibSequence[1] = @1;
    
    [fibSequence enumerateObjectsUsingBlock:^(NSNumber *obj, NSUInteger idx, BOOL *stop) {
        if (idx > 1) {
            NSUInteger fibIntIdxMinus1 = [fibSequence[idx - 1] intValue];
            NSUInteger fibIntIdxMinus2 = [fibSequence[idx - 2] intValue];
            
            NSUInteger fibIntIdx       = fibIntIdxMinus1 + fibIntIdxMinus2;
            fibSequence[idx] = [NSNumber numberWithUnsignedInteger:fibIntIdx];
        }
    }];
    return [fibSequence[index] intValue];

    
    
    
    
//    for (NSUInteger i = 0; i <= index; i++) {
//        fibSequence addObject:<#(id)#>
//    }
    
    
    
}

@end
