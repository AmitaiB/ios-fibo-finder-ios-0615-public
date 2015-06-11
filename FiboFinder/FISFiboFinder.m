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
    NSMutableArray *fibSequence = [@[]mutableCopy];
    
//    fibSequence[0] = @0;
//    fibSequence[1] = @1;
    [fibSequence addObject:@0];
    [fibSequence addObject:@1];
    
    for (NSUInteger idx = 3; idx <= index; idx++) {
        [fibSequence addObject:[NSNumber numberWithUnsignedInteger:([fibSequence[idx - 1] intValue] + [fibSequence[idx - 2] intValue])]];
        NSLog(@"fibSequence[%d] = %@", fibSequence[idx]);
        
//            NSUInteger fibIntIdxMinus1 = [fibSequence[idx - 1] intValue];
//            NSUInteger fibIntIdxMinus2 = [fibSequence[idx - 2] intValue];
//            
//            NSUInteger fibIntIdx       = fibIntIdxMinus1 + fibIntIdxMinus2;
//            fibSequence[idx] = [NSNumber numberWithUnsignedInteger:fibIntIdx];
        }
   
    NSLog(@"For index: %i, produced number %@", index, fibSequence[index]);
    return [fibSequence[index] intValue];

    
    
    
    
//    for (NSUInteger i = 0; i <= index; i++) {
//        fibSequence addObject:<#(id)#>
//    }
    
    
    
}

@end
