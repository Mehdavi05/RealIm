//
//  ChatRoomViewController.h
//  RealIm
//
//  Created by Shujaat Hussain on 29/04/2015.
//  Copyright (c) 2015 Shujaat Web And Mob Developers. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "Reachability.h"

@interface ChatRoomViewController : UIViewController <UITextFieldDelegate,UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITextField             *tfEntry;
    IBOutlet UITableView    *chatTable;
    NSMutableArray          *chatData;
    BOOL                    _reloading;
    NSString                *className;
    NSString                *userName;
}

@property(nonatomic, strong)  UITextField *tfEntry;
@property (nonatomic, retain) UITableView *chatTable;
@property (nonatomic, retain) NSMutableArray *chatData;
@property (atomic, retain)     NSString       *userName;

-(void) registerForKeyboardNotifications;
-(void) freeKeyboardNotifications;
-(void) keyboardWasShown:(NSNotification*)aNotification;
-(void) keyboardWillHide:(NSNotification*)aNotification;

- (void)loadLocalChat;

- (NSString *)stringFromStatus:(NetworkStatus )status;
-(void)presentChatNameDialog;
@end
