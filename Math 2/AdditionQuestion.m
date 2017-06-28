//
//  AdditionQuestion.m
//  Math 2
//
//  Created by Alex Wymer  on 2017-06-28.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    
    NSString *addQuestion = [NSString stringWithFormat:@"What is %ld + %ld?", (long)self.leftVal, (long)self.rightVal];
    NSInteger addAnswer = self.leftVal + self.rightVal;
    
    [super setQuestion:addQuestion];
    [super setAnswer:addAnswer]; 
}

@end
