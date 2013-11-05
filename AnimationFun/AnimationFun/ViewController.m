//
//  ViewController.m
//  AnimationFun
//
//  Created by Code Fellows on 10/31/13.
//  Copyright (c) 2013 Code Fellows. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIDynamicAnimator *animator;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear: animated];
    
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView: self.view];
    
    UIGravityBehavior *gravityBehavior = [[UIGravityBehavior alloc] initWithItems: self.bubbleViews];
    
    [_animator addBehavior: gravityBehavior];
    
    UICollisionBehavior *collisionBehavior = [[UICollisionBehavior alloc] initWithItems: self.bubbleViews];
    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
    [_animator addBehavior: collisionBehavior];
    
    for (UIView *bubbleView in self.bubbleViews)
    {
        for (int i = 0; i < 5; i++)
        {
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(i * 10, 0, 10, 10)];
            view.backgroundColor = [UIColor greenColor];
            [bubbleView addSubview: view];
            [gravityBehavior addItem: view];
            [collisionBehavior addItem: view];
        }
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
