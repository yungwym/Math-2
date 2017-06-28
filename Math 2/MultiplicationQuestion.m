//
//  MultiplicationQuestion.m
//  Math 2
//
//  Created by Alex Wymer  on 2017-06-28.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    
    NSString *multiQuestion = [NSString stringWithFormat:@"What is %ld x %ld?", self.leftVal, self.rightVal];
    NSInteger multiAnswer = self.leftVal * self.rightVal;
    
    [super setQuestion:multiQuestion];
    [super setAnswer:multiAnswer]; 
}

@end
