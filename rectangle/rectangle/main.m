//
//  main.m
//  rectangle
//
//  Created by bruce on 15/3/8.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Rectangle *myRect = [[Rectangle alloc] init];
        XYPoint *myPoint = [[XYPoint alloc] init];
        
        [myPoint setX:100 andY:150];
        [myRect setWidth:5 andHeight:19];
        myRect.origin = myPoint;
        
        NSLog(@"The area of retangle: %i",[myRect area]);
        NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
    }
    return 0;
}
