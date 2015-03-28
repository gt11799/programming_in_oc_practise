//
//  Fraction.h
//  iPhonePractise
//
//  Created by bruce on 15/3/28.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

-(void) print;
-(void) setTo: (int) n over: (int) d;
-(Fraction *) add:(Fraction *) f;
-(Fraction *) subtract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *)f;

-(void) reduce;
-(double) converToNum;
-(NSString *) convertToString;

@end
