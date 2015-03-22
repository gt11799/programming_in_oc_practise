//
//  main.m
//  definePractise
//
//  Created by bruce on 15/3/19.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import <Foundation/Foundation.h>
#define IS_LEAP_YEAR(y) y % 4 == 0 && y % 100 != 0 || y % 400 == 0
#define IPAD
#ifdef IPAD
# define kkkk 6
#else
# define kkkk 7
#endif

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int arraySum (int array[], int n);
        int values[10] = {3, 5, 89, -98, 48, 98, 43, 23};
        
        NSLog(@"The Sum is %i", arraySum(values, 7));
    }
    
    if (argc != 2){
        NSLog(@"No word typed on the command");
        return 1;
    }
    
    return 0;
}

int arraySum (int array[],int n)
{
    int sum = 0, *ptr;
    int *arrayEnd = array + n;
    
    for (ptr = array; ptr < arrayEnd; ++ptr){
        NSLog(@"%i", *ptr);
        sum += *ptr;
    }
    return sum;
}
