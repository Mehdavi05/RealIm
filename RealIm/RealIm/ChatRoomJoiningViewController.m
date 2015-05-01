//
//  ViewController.m
//  RealIm
//
//  Created by Shujaat Hussain on 29/04/2015.
//  Copyright (c) 2015 Shujaat Web And Mob Developers. All rights reserved.
//


// The soul function of this class is to open a screen for the user to enter a name to join a chatroom

#import "ChatRoomJoiningViewController.h"
#import "UserNameEntryView.h"
#import "ChatRoomViewController.h"

@interface ChatRoomJoiningViewController () <UserNameViewDelegate, UITextFieldDelegate>

@property (nonatomic, retain) UIView *nameEntryView;

@end

@implementation ChatRoomJoiningViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUserNameEntryView];
    [self.nameEntryView setHidden:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) setUserNameEntryView
{
    self.nameEntryView = [[[NSBundle mainBundle] loadNibNamed:@"UserNameEntryView" owner:self options:nil] objectAtIndex:0];
    self.nameEntryView.frame = CGRectMake(self.view.frame.size.width/2-self.nameEntryView.frame.size.width/2, self.view.frame.size.height/2 - self.nameEntryView.frame.size.height/2, self.nameEntryView.frame.size.width, self.nameEntryView.frame.size.height);
    [self.view addSubview:self.nameEntryView];
    ((UserNameEntryView *)self.nameEntryView).delegate = self;
    ((UserNameEntryView *)self.nameEntryView).userNameTextField.delegate = self;
}

//Through this action a view for the name entry appears

- (IBAction)PresentViewForCredentialsEntry:(id)sender {
    
    [self.nameEntryView setHidden:NO];
    
    NSLog(@"\nEnter Your Credentials\n");
}


- (void)cancelUserNameEntry
{
    [self.nameEntryView setHidden:YES];
    
}

- (void)confirmUserNameEntry:(NSString *) userName
{
    NSLog(@"\nName is entered\n");
    ChatRoomViewController * vc = (ChatRoomViewController *)[self.storyboard instantiateViewControllerWithIdentifier:@"ChatRoomVC"];
    vc.userName = userName;
    [self presentViewController:vc animated:YES completion:nil];
    
}

- (void)nameIsNotProvided
{
    NSLog(@"\nName is not provided\n");
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
