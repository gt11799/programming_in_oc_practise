//
//  AddressCard.h
//  addressCardProject
//
//  Created by bruce on 15/3/23.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *name, *email;

-(void) setName:(NSString *)theName andEmail:(NSString *) theEmail;
-(void) print;

-(BOOL) isEqual:(AddressCard *) theCard;
-(NSComparisonResult) compareNames: (id) element;

@end
