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
    else if (index == 1)
        return 1;
    else return [self fibonacciNumberAtIndex:(index -1)] + [self fibonacciNumberAtIndex:(index -2)];
}

@end
