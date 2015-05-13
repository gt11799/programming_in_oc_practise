//
//  ViewController.h
//  ModalEditor
//
//  Created by bruce on 15/5/13.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
-(IBAction)exitToHere:(UIStoryboardSegue *)sender;
@property (weak, nonatomic) IBOutlet UILabel *emailLabel;

@end

