//
//  ProjectEuler.m
//  ProgrammingPractice
//
//  Created by Clifton Crosland on 11/11/12.
//  Copyright (c) 2012 Clifton Crosland. All rights reserved.
//

#import "ProjectEuler.h"
#import "MathUtils.h"

@implementation ProjectEuler

+ (NSNumber *) solveProblem1 {
    int sum = 0;
    for (int i = 0; i < 1000; i++) {
        if (i % 3 == 0 || i % 5 == 0) {
            sum += i;
        }
    }
    return [NSNumber numberWithInt:sum];
}

+ (NSNumber *) solveProblem2 {
    int sum = 0;
    int a = 1;
    int b = 2;
    while (b <= 4000000) {
        if (b % 2 == 0) {
            sum += b;
        }
        int tempA = a;
        a = b;
        b = tempA + b;
    }
    return [NSNumber numberWithInt:sum];
}

+ (NSNumber *) solveProblem3 {
    long long number = 600851475143;
    long long sqrtNumber = sqrt(number);
    long long biggestPrimeDivisor = 0;
    for (long long divisor = 2; divisor <= sqrtNumber; divisor++) {
        if (number % divisor == 0 && [MathUtils isPrime:divisor]) {
            biggestPrimeDivisor = divisor;
        }
    }
    return [NSNumber numberWithLongLong:biggestPrimeDivisor];
}

+ (NSNumber *) solveProblem4 {
    long long largestPalindrome = 0;
    for (long long a = 100; a <= 999; a++) {
        for (long long b = 100; b <= 999; b++) {
            long long product = a * b;
            NSString *productString = [[NSNumber numberWithLongLong:product] stringValue];
            int last = [productString length] - 1;
            bool isPalindrome = YES;
            for (int digit = 0; digit <= last / 2; digit++) {
                if ([productString characterAtIndex:digit] != [productString characterAtIndex:last - digit]) {
                    isPalindrome = NO;
                    break;
                }
            }
            if (isPalindrome && product > largestPalindrome) {
                largestPalindrome = product;
            }
        }
    }
    return [NSNumber numberWithLongLong:largestPalindrome];
}

@end
