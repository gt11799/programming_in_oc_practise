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
        void exchange (int *pint1, int *pint2);
        int i1 = -5, i2 = 34, *p1 = &i1, *p2 = &i2;
        
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
        exchange(p1, p2);
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
        
        exchange(&i1, &i2);
        NSLog(@"i1 = %i, i2 = %i", i1, i2);
    }
    return 0;
}

void exchange (int *pint1, int *pint2)
{
    int temp;
    
    temp = *pint1;
    *pint1 = *pint2;
    *pint2 = temp;
}
