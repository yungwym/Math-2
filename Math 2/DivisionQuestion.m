//
//  DivisionQuestion.m
//  Math 2
//
//  Created by Alex Wymer  on 2017-06-28.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    
    NSString *divQuestion = [NSString stringWithFormat:@"What is %ld / %ld?", self.leftVal, self.rightVal];
    NSInteger divAnswer = self.leftVal / self.rightVal;
    
    [super setQuestion:divQuestion];
    [super setAnswer:divAnswer]; 
}

@end
