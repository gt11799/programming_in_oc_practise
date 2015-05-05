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
    //for multi button
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:@"Maybe Later"]) {
        self.userOutput.text = @"Clicked 'Maybe Later'";
    } else if ([buttonTitle isEqualToString:@"Never"]) {
        self.userOutput.text = @"Clicked 'Never'";
    } else {
        self.userOutput.text = @"Clicked 'OK'";
    }
    
    //for input
    if ([alertView.title isEqualToString:@"Email Address"]) {
        self.userOutput.text = [[alertView textFieldAtIndex:0] text];
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

#pragma mark - implement alert dialog

- (IBAction)doActionSheet:(id)sender
{
    UIActionSheet *actionSheet;
    actionSheet = [[UIActionSheet alloc]
                   initWithTitle:@"Available Actions"
                   delegate:self
                   cancelButtonTitle:@"Cancel"
                   destructiveButtonTitle:@"Destroy"
                   otherButtonTitles:@"Negotiate",@"Compromise", nil];
    actionSheet.actionSheetStyle = UIActionSheetStyleDefault;
    [actionSheet showFromRect:[(UIButton *)sender frame] inView:self.view animated:YES];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:@"Destroy"]) {
        self.userOutput.text = @"Click 'Destroy'";
    } else if ([buttonTitle isEqualToString:@"Negotiate"]) {
        self.userOutput.text = @"Click 'Negotiate'";
    } else if ([buttonTitle isEqualToString:@"Compromise"]) {
        self.userOutput.text = @"Click 'Compromise'";
    } else {
        self.userOutput.text = @"Click 'Cancel'";
    }
}

#pragma mark - implement action sheet

- (IBAction)doSound:(id)sender
{
    SystemSoundID soundID;
    NSString *soundFile = [[NSBundle mainBundle] pathForResource:@"soundeffect" ofType:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)
                                     [NSURL fileURLWithPath:soundFile]
                                     , &soundID);
    AudioServicesPlaySystemSound(soundID);
}

- (IBAction)doAlertSound:(id)sender
{
    SystemSoundID soundID;
    NSString *soundFile = [[NSBundle mainBundle] pathForResource:@"alertsound" ofType:@"wav"];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)
                                     [NSURL fileURLWithPath:soundFile]
                                     , &soundID);
    AudioServicesPlayAlertSound(soundID);
}

- (IBAction)doVibration:(id)sender {
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
