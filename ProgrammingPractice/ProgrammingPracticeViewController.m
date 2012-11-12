//
//  ProgrammingPracticeViewController.m
//  ProgrammingPractice
//
//  Created by Clifton Crosland on 11/11/12.
//  Copyright (c) 2012 Clifton Crosland. All rights reserved.
//

#import "ProgrammingPracticeViewController.h"
#import "ProjectEuler.h"

@implementation ProgrammingPracticeViewController

- (IBAction)solveButton:(UIButton *)sender {
    NSNumber *solution = [ProjectEuler solveProblem4];
    self.solutionLabel.text = [NSString stringWithFormat:@"%lld", [solution longLongValue]];
}

@end
