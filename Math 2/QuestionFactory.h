//
//  QuestionFactory.h
//  Math 2
//
//  Created by Alex Wymer  on 2017-06-28.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property (nonatomic) NSArray *subclassQuestions;

-(Question *)generateRandomQuestion; 

@end
