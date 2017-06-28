//
//  UserInput.m
//  Math 2
//
//  Created by Alex Wymer  on 2017-06-28.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "UserInput.h"

@implementation UserInput

-(void) getInput {
    
    char userCQuestion[255];
    
    NSLog(@"Enter your answer");
    fgets(userCQuestion, 255, stdin);
    
    _response = [NSString stringWithCString:userCQuestion encoding: NSUTF8StringEncoding];
    
    [_response stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
    
}


@end
