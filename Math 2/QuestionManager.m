//
//  QuestionManager.m
//  Math 2
//
//  Created by Alex Wymer  on 2017-06-28.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _questions = [NSMutableArray array]; 
    }
    return self;
}

-(NSString *)timeOutput {
    
    NSTimeInterval totalTime = 0.00;
    NSTimeInterval averageTime = 0.00;
    
    for (AdditionQuestion *addQues in _questions) {
        
        totalTime += [addQues answerTime];
        averageTime = totalTime/_questions.count;
    }
    
    return [NSString stringWithFormat:@"Total Time: %0.2f S, Average Time: %0.2f S", totalTime, averageTime];
}


@end
