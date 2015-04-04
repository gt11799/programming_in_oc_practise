//
//  DropitBehaviour.h
//  dropit
//
//  Created by bruce on 15/4/4.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropitBehaviour : UIDynamicBehavior

-(void)addItem: (id <UIDynamicItem>)item;
-(void)removeItem: (id <UIDynamicItem>)item;



@end
