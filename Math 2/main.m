//
//  main.m
//  Math 2
//
//  Created by Alex Wymer  on 2017-06-28.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInput.h"
#import "Question.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        UserInput *userInput = [[UserInput alloc] init];
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        BOOL PLAY = YES;
        while (PLAY == YES) {
            
            
            Question *mathQuestion = [questionFactory generateRandomQuestion];
            
            NSLog(@"%@", mathQuestion.question);
            
            [userInput getInput];
            NSLog(@"You entered: %@", userInput.response);
            
            
            if ([userInput.response containsString:@"quit"]) {
                PLAY = NO;
                break;
            }
            
            if (mathQuestion.answer == userInput.response.integerValue) {
                
                NSLog(@"Right!");
                scoreKeeper.right += 1;
                NSLog(@"%@",[scoreKeeper displayScore]);
                
            } else {
                NSLog(@"Wrong!");
                scoreKeeper.wrong += 1;
                NSLog(@"%@",[scoreKeeper displayScore]);
                
            }
            
            [questionManager.questions addObject:mathQuestion];
            NSLog(@"%@", [questionManager timeOutput]);
        }
    }
    return 0;
}
