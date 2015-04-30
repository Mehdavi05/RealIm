//
//  UserNameEntryView.h
//  RealIm
//
//  Created by Shujaat Hussain on 29/04/2015.
//  Copyright (c) 2015 Shujaat Web And Mob Developers. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol UserNameViewDelegate;


@interface UserNameEntryView : UIView

@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (nonatomic) id<UserNameViewDelegate> delegate;

@end

@protocol UserNameViewDelegate <NSObject>
@optional;
- (void)cancelUserNameEntry;
- (void)confirmUserNameEntry:(NSString *) userName;
- (void)nameIsNotProvided;

@end

