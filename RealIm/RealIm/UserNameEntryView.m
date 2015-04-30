//
//  UserNameEntryView.m
//  RealIm
//
//  Created by Shujaat Hussain on 29/04/2015.
//  Copyright (c) 2015 Shujaat Web And Mob Developers. All rights reserved.
//

#import "UserNameEntryView.h"

@implementation UserNameEntryView

- (IBAction)nameEntryCancellationAction:(id)sender
{
    
    if (nil != self.delegate && [self.delegate respondsToSelector:@selector(cancelUserNameEntry)])
    {
        [self.delegate cancelUserNameEntry];
    }
}

- (IBAction)nameEntryConfirmationAction:(id)sender
{
    if (nil != self.delegate && [self.delegate respondsToSelector:@selector(confirmUserNameEntry:)])
    {
        if ([self.userNameTextField.text length]>0)
        {
            [self.delegate confirmUserNameEntry:self.userNameTextField.text];
        }
        else
        {
        [self.delegate nameIsNotProvided];
        }
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
