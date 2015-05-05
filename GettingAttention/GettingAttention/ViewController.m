//
//  ViewController.m
//  GettingAttention
//
//  Created by bruce on 15/5/5.
//  Copyright (c) 2015年 bruce. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *userOutput;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)doAlert:(id)sender
{
    UIAlertView *alertDialog;
    alertDialog = [[UIAlertView alloc]
                   initWithTitle:@"Alert Button Selected"
                    message:@"I need your attention NOW"
                   delegate:nil
                   cancelButtonTitle:@"OK"
                   otherButtonTitles:nil, nil];
    [alertDialog show];
}

- (IBAction)doMultiButtonAlert:(id)sender
{
    UIAlertView *alertDialog;
    alertDialog = [[UIAlertView alloc]
                   initWithTitle:@"Alert Button Selected"
                   message:@"I need your attention NOW"
                   delegate:self
                   cancelButtonTitle:@"OK"
                   otherButtonTitles:@"Maybe Later", @"Never", nil];
    [alertDialog show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"run the delegate");
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:@"Maybe Later"]) {
        self.userOutput.text = @"Clicked 'Maybe Later'";
    } else if ([buttonTitle isEqualToString:@"Never"]) {
        self.userOutput.text = @"Clicked 'Never'";
    } else {
        self.userOutput.text = @"Clicked 'OK'";
    }
}

- (IBAction)doAlertInput:(id)sender
{
    UIAlertView *alertDialog;
    alertDialog = [[UIAlertView alloc]
                   initWithTitle:@"Email Address"
                   message:@"Please enter your email address"
                   delegate:self
                   cancelButtonTitle:@"OK"
                   otherButtonTitles: nil];
    alertDialog.alertViewStyle = UIAlertViewStylePlainTextInput;
    [alertDialog show];
}

- (IBAction)doActionSheet:(id)sender {
}

- (IBAction)doSound:(id)sender {
}

- (IBAction)doAlertSound:(id)sender {
}

- (IBAction)doVibration:(id)sender {
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
