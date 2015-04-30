//
//  ChatroomMessageCellTableViewCell.h
//  RealIm
//
//  Created by Shujaat Hussain on 29/04/2015.
//  Copyright (c) 2015 Shujaat Web And Mob Developers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatroomMessageCell : UITableViewCell
{
    IBOutlet UILabel *userNameLabel;
    IBOutlet UILabel *messageLabel;
}

@property (nonatomic,retain) IBOutlet UILabel *userNameLabel;
@property (nonatomic,retain) IBOutlet UILabel *messageLabel;

@end
