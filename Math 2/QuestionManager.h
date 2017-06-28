//
//  QuestionManager.h
//  Math 2
//
//  Created by Alex Wymer  on 2017-06-28.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

@interface QuestionManager : NSObject

@property (nonatomic) NSMutableArray *questions;

-(NSString *)timeOutput;


@end
