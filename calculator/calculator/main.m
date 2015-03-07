//
//  main.m
//  calculator
//
//  Created by bruce on 15/3/7.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator: NSObject

//累加方法
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;

//算术方法
-(void) add: (double) value;
-(void) subtract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
@end

@implementation Calculator
{
    double accumulator;
}

-(void) setAccumulator:(double)value
{
    accumulator = value;
}

-(void) clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return accumulator;
}

-(void) add: (double) value
{
    accumulator += value;
}

-(void) subtract:(double)value
{
    accumulator -= value;
}

-(void) multiply:(double)value
{
    accumulator *= value;
}

-(void) divide:(double)value
{
    accumulator /= value;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculator *deskCalc = [[Calculator alloc] init];
        
        [deskCalc setAccumulator: 100.0];
        [deskCalc add: 200];
        [deskCalc clear];
        [deskCalc add: 34];
        [deskCalc divide: 32.0];
        [deskCalc multiply:87.7];
        NSLog(@"The result is %g", [deskCalc accumulator]);
        
    }
    return 0;
}
