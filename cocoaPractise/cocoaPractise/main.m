//
//  main.m
//  cocoaPractise
//
//  Created by bruce on 15/3/22.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;
        
        intNumber = [NSNumber numberWithInteger: 100];
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long)myInt );
        
        myNumber = [NSNumber numberWithLong: 0xabcdef];
        NSLog(@"%lx", [myNumber longValue]);
        
        myNumber = [NSNumber numberWithChar: 'X'];
        NSLog(@"%c", [myNumber charValue]);
        
        floatNumber = [NSNumber numberWithFloat: 100.00];
        NSLog(@"%g", [floatNumber floatValue]);
        
        myNumber = [NSNumber numberWithDouble: 12345e+15];
        NSLog(@"%lg", [myNumber doubleValue]);
        
       // NSLog(@"%lg", [myNumber integerValue]);
        
        if ([intNumber isEqualToNumber: floatNumber] == YES)
            NSLog(@"Numbers are Equal");
        else
            NSLog(@"Numbers are not equal");
        
        if ([intNumber compare: myNumber] == NSOrderedAscending)
            NSLog(@"First number is less than second");
    }
    return 0;
}
