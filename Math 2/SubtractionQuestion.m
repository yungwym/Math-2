//
//  SubtractionQuestion.m
//  Math 2
//
//  Created by Alex Wymer  on 2017-06-28.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    
    NSString *subQuestion = [NSString stringWithFormat:@"What is %ld - %ld?", (long)self.leftVal, (long)self.rightVal];
    NSInteger subAnswer = self.leftVal - self.rightVal;
    
    [super setQuestion:subQuestion];
    [super setAnswer:subAnswer];
}

@end
