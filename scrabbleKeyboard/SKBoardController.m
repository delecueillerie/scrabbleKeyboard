//
//  SKWordsDataController.m
//  scrabbleKeyboard
//
//  Created by Olivier Delecueillerie on 13/05/2014.
//  Copyright (c) 2014 lagspoon.scrabbleKeyboard. All rights reserved.
//

#import "SKBoardController.h"

@interface SKBoardController ()

@end


@implementation SKBoardController


//initialize the board controller
-(instancetype)init
{
    self = [super init];
    if (self) {
        //initialize
    }
    return self;
}


/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
//
//fetches a word, deals the letters and creates the targets
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////


-(void)dealWord:(NSString *)word {
    //Check data avalaible
    NSAssert(word, @"no level loaded");
    self.word = word;
}


/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////
//Triggered action
/////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////


//clear the tiles and targets
-(void)clearBoard {
}

- (void) clue {
}



-(BOOL)achievement
{
    /*if ([self nextTarget]) {
        return NO;
    }*/
    //stop the stopwatch
    [self.delegate buttonHelpEnabled:NO];
    [self.delegate wordFulfilled];

    //the game is completed!
    //[self.audioController playEffect:kSoundWin];
 
    NSLog(@"Game Over!");
    
    return YES;
}

@end
