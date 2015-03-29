//
//  ViewController.m
//  iPhonePractise
//
//  Created by bruce on 15/3/27.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"

@interface ViewController ()

@end

@implementation ViewController
{
    char op;
    int  currentNumber;
    BOOL firstOperand, isNumberator;
    Calculator  *myCalculator;
    NSMutableString *displayString;
}

@synthesize display;



- (void)viewDidLoad {
    
    firstOperand = YES;
    isNumberator = YES;
    displayString = [NSMutableString stringWithCapacity:40];
    myCalculator = [[Calculator alloc] init];
}

-(void)processDigit:(int)digit
{
    currentNumber = currentNumber * 10 + digit;
    
    [displayString appendString:[NSString stringWithFormat:@"%i",digit]];
    display.text = displayString;
}

-(IBAction)clickDigit:(UIButton *)sender
{
    int digit = sender.tag;
    [self processDigit:digit];
}

-(void) processOp:(char)theOp
{
    NSString *opStr;
    
    op = theOp;
    
    switch (theOp) {
        case '+':
            opStr = @" + ";
            break;
        case '-':
            opStr = @" - ";
            break;
        case '*':
            opStr = @" x ";
            break;
        case '/':
            opStr = @" ÷ ";
            break;
    }
    
    [self storeFracpart];
    firstOperand = NO;
    isNumberator = YES;
    
    [displayString appendString: opStr];
    display.text = displayString;
}

-(void) storeFracpart
{
    if (firstOperand){
        if (isNumberator) {
            myCalculator.operand1.numerator = currentNumber;
            myCalculator.operand1.denominator = 1;
        }
        else{
            myCalculator.operand1.denominator = currentNumber;
        }
    }
    else if (isNumberator) {
        myCalculator.operand2.numerator = currentNumber;
        myCalculator.operand2.denominator = 1;
        }
    else {
        myCalculator.operand2.denominator = currentNumber;
        firstOperand = YES;
    }
    
    currentNumber = 0;
    
}

-(IBAction)clickOver
{
    [self storeFracpart];
    isNumberator = NO;
    [displayString appendString: @"/"];
    display.text = displayString;
}

-(IBAction)clickPlus
{
    [self processOp: '+'];
}

-(IBAction)clickMinus
{
    [self processOp: '-'];
}

-(IBAction)clickMutiply
{
    [self processOp: '*'];
}

-(IBAction)clickDivide
{
    [self processOp: '/'];
}

-(IBAction) clickEquals
{
    if (firstOperand == NO) {
        [self storeFracpart];
        [myCalculator performOperation:op];
        
        [displayString appendString: @" = "];
        [displayString appendString: [myCalculator.accumulator convertToString]];
        display.text = displayString;
        
        currentNumber = 0;
        isNumberator = YES;
        firstOperand = YES;
        [displayString setString: @""];
    }
}

-(IBAction) clickClear
{
    isNumberator = YES;
    firstOperand = YES;
    currentNumber = 0;
    [myCalculator clear];
    
    [displayString setString: @""];
    display.text = displayString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
