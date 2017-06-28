//
//  Question.m
//  Math 2
//
//  Created by Alex Wymer  on 2017-06-28.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        _startTime = [NSDate date];
        _leftVal = arc4random_uniform(90) +10;
        _rightVal = arc4random_uniform(90) +10;
    }
    return self;
}

//Overrider getter for answer
-(NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime {
    NSTimeInterval answerTime = (float)[_endTime timeIntervalSinceDate:_startTime];
    return answerTime;
}

-(void)generateQuestion {
    //Subclasses will handle this 
}

@end
