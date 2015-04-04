//
//  ViewController.m
//  dropit
//
//  Created by bruce on 15/4/3.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import "ViewController.h"
#import "DropitBehaviour.h"

@interface ViewController () <UIDynamicAnimatorDelegate>
@property (strong, nonatomic) IBOutlet UIView *gameView;
@property (strong, nonatomic) UIDynamicAnimator *animator;
@property (strong, nonatomic) DropitBehaviour *dropitBehaviour;

@end

@implementation ViewController

static const CGSize DROP_SIZE = {40, 40};

- (IBAction)tap:(UITapGestureRecognizer *)sender {
    [self drop];
}

-(void)drop
{
    CGRect frame;
    frame.origin = CGPointZero;
    frame.size = DROP_SIZE;
    int x = (arc4random()%(int)self.gameView.bounds.size.width) / DROP_SIZE.width;
    frame.origin.x = x * DROP_SIZE.width;
    
    UIView *dropView = [[UIView alloc] initWithFrame:frame];
    dropView.backgroundColor = [self randomColor];
    [self.gameView addSubview:dropView];
    
    [self.dropitBehaviour addItem:dropView];
}

-(UIColor *)randomColor
{
    switch (arc4random()%5) {
        case 0: return [UIColor purpleColor]; break;
        case 1: return [UIColor greenColor]; break;
        case 2: return [UIColor redColor]; break;
        case 3: return [UIColor blueColor]; break;
        case 4: return [UIColor orangeColor]; break;
    }
    return [UIColor blackColor];
}

-(UIDynamicAnimator *)animator
{
    if (!_animator) {
        _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.gameView];
        _animator.delegate = self;
    }
    return _animator;
}

-(DropitBehaviour *)dropitBehaviour
{
    if (!_dropitBehaviour) {
        _dropitBehaviour = [[DropitBehaviour alloc] init];
        [self.animator addBehavior:_dropitBehaviour];
    }
    return _dropitBehaviour;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
