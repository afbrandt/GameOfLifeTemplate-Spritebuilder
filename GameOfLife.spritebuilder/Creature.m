//
//  Creature.m
//  GameOfLife
//
//  Created by Andrew Brandt on 6/24/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature

- (id)initCreature {

    self = [super initWithImageNamed:@"GameOfLifeAssets/Assets/bubble.png"];
    
    if (self){
        self.isAlive = NO;
    }

    return self;
}


- (void)flipState {

    [self setIsAlive:!_isAlive];
    
}

- (void)setIsAlive:(BOOL)newState {

    _isAlive = newState;
    
    //inherited property from CCNode class, superclass of CCSprite
    self.visible = _isAlive;
}


@end
