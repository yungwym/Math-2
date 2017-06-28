//
//  QuestionFactory.m
//  Math 2
//
//  Created by Alex Wymer  on 2017-06-28.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _subclassQuestions = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}

-(Question *)generateRandomQuestion {
    
    NSInteger questionInt = arc4random_uniform(4);
    NSString *questionString = self.subclassQuestions[questionInt];
    
    Question *randQuestion = [[NSClassFromString(questionString) alloc] init];
    
    return randQuestion;
}
@end

