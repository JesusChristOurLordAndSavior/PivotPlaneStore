//
//  StoreScene.m
//  GameStoreTest
//
//  Created by Luigi Mangione on 4/3/15.
//  Copyright (c) 2015 AppRoar Studios. All rights reserved.
//

#import "StoreScene.h"

@interface StoreScene()

@property BOOL contentCreated;

@end


@implementation StoreScene

- (void)didMoveToView:(SKView *)view{
    //Create contents
    if (!self.contentCreated){
        [self createSceneContents];
        self.contentCreated = YES;
    }
}

- (void)createSceneContents{
    self.backgroundColor = [SKColor blueColor];
}


@end
