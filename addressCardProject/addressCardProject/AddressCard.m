//
//  AddressCard.m
//  addressCardProject
//
//  Created by bruce on 15/3/23.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
{
    NSString *name;
    NSString *email;
}

-(void) setName:(NSString *)theName
{
    name = [NSString stringWithString: theName];
}

-(void) setEmail:(NSString *)theEmail
{
    email = [NSString stringWithString: theEmail];
}

-(NSString *) name
{
    return name;
}

-(NSString *) email
{
    return email;
}

-(void) print
{
    NSLog(@"========================");
    NSLog(@"|                   |");
    NSLog(@"|     %-31s", [name UTF8String]);
    NSLog(@"|     %-31s", [email UTF8String]);
    NSLog(@"|                   |");
    NSLog(@"|      O       O    |");
    NSLog(@"========================");
}

@end
