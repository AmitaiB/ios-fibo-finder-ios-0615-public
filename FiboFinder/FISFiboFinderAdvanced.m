//
//  FISFiboFinderAdvanced.m
//  FiboFinder
//
//  Created by Amitai Blickstein on 6/11/15.
//  Copyright (c) 2015 FIS. All rights reserved.
//

#import "FISFiboFinderAdvanced.h"

@implementation FISFiboFinderAdvanced

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
