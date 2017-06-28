//
//  ScoreKeeper.m
//  Math 2
//
//  Created by Alex Wymer  on 2017-06-28.
//  Copyright © 2017 Sav Inc. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _wrong = 0;
        _right = 0;
        
    }
    return self;
}

-(NSString *)displayScore {
    
    return [NSString stringWithFormat:@"Score: %ld Right, %ld Wrong --- %ld%%", (long)_right, (long)_wrong, (long) (self.right *100 / (self.right + self.wrong))];
    
    
}


@end
