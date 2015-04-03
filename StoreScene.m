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
    self.backgroundColor = [SKColor whiteColor];
    
    SKSpriteNode *leftButton = [SKSpriteNode spriteNodeWithImageNamed:@"LeftButton"];
    leftButton.position = CGPointMake(50, 60);
    leftButton.name = @"LeftButton";
    [self addChild:leftButton];
    
    SKSpriteNode *rightButton = [SKSpriteNode spriteNodeWithImageNamed:@"RightButton"];
    rightButton.position = CGPointMake(self.frame.size.width - 50, 60);
    rightButton.name = @"RightButton";
    [self addChild:rightButton];
    
    SKSpriteNode *selectButton = [SKSpriteNode spriteNodeWithImageNamed:@"SelectButton"];
    selectButton.position = CGPointMake(self.frame.size.width / 2.0, 60);
    selectButton.name = @"SelectButton";
    [self addChild:selectButton];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    
    if ([node.name isEqualToString:@"LeftButton"]){
        //DO SOMETHING
        NSLog(@"Touched Left");
        
    }
}

@end
