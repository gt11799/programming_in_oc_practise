//
//  AddressCard.h
//  addressCardProject
//
//  Created by bruce on 15/3/23.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

-(void) setName: (NSString *) theName;
-(void) setEmail: (NSString *) theEmail;
-(NSString *) name;
-(NSString *) email;

-(void) print;

@end
