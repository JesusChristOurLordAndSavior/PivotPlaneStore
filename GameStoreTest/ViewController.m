//
//  ViewController.m
//  GameStoreTest
//
//  Created by Luigi Mangione on 4/3/15.
//  Copyright (c) 2015 AppRoar Studios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewWillAppear:(BOOL)animated{
    SKView *spriteView = (SKView *)self.view;
    StoreScene *store = [[StoreScene alloc] initWithSize:[UIScreen mainScreen].bounds.size];
    [spriteView presentScene:store];
}

@end
