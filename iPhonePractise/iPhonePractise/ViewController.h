//
//  ViewController.h
//  iPhonePractise
//
//  Created by bruce on 15/3/27.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *display;

-(void) processDigit:(int) digit;
-(void) processOp: (char) theOp;
-(void) storeFracpart;

-(IBAction)clickDigit:(UIButton *)sender;

-(IBAction)clickPlus;
-(IBAction)clickMinus;
-(IBAction)clickMutiply;
-(IBAction)clickDivide;

-(IBAction)clickOver;
-(IBAction)clickEquals;
-(IBAction)clickClear;

@end

