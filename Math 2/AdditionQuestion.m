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
        _startTime = [NSDate date];
        _leftVal = arc4random_uniform(90) +10;
        _rightVal = arc4random_uniform(90) +10;
        _answer = _leftVal + _rightVal;
        _question = [NSString stringWithFormat:@"What is %ld + %ld?", (long)_leftVal, (long)_rightVal];
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



@end
