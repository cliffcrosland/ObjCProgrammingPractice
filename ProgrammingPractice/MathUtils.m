//
//  MathUtils.m
//  ProgrammingPractice
//
//  Created by Clifton Crosland on 11/12/12.
//  Copyright (c) 2012 Clifton Crosland. All rights reserved.
//

#import "MathUtils.h"

@implementation MathUtils

+ (BOOL) isPrime:(long long) num {
    if (num == 2) return YES;
    if (num % 2 == 0) return NO;
    long long sqrtNum = sqrt(num);
    for (long long divisor = 3; divisor <= sqrtNum; divisor += 2) {
        if (num % divisor == 0) return NO;
    }
    return YES;
}

@end
