//
//  ViewController.m
//  iPhonePractise
//
//  Created by bruce on 15/3/27.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    char op;
    int  currentNumber;
    BOOL firstOperator, isNumberator;
    //Calculator  *myCalculator;
    NSMutableString *displayString;
}

@synthesize display;

-(IBAction)click1
{
    display.text = @"1";
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
