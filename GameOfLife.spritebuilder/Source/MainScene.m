//
//  MainScene.m
//  PROJECTNAME
//
//  Created by Viktor on 10/10/13.
//  Copyright (c) 2013 Apportable. All rights reserved.
//

#import "MainScene.h"
#import "Grid.h"

@implementation MainScene {
Grid *_grid;
CCTimer *_timer;
CCLabelTTF *_generationScoreLabel;
CCLabelTTF *_populationScoreLabel;

}
- (id)init {
    self = [super init];
    
    if (self) {
        _timer = [[CCTimer alloc] init];
    }
    
    return self;
}

- (void)play {
    //call method step every 0.5 second
    [self schedule:@selector(step) interval:0.5f];
}

- (void)pause {
    [self unschedule:@selector(step)];
}

//this is the method that is scheduled
- (void)step {
    [_grid evolveStep];
    
    _generationScoreLabel.string = [NSString stringWithFormat:@"%d", _grid.generation];
    _populationScoreLabel.string = [NSString stringWithFormat:@"%d", _grid.totalAlive];
}

@end
