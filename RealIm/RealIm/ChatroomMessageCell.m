//
//  ChatroomMessageCellTableViewCell.m
//  RealIm
//
//  Created by Shujaat Hussain on 29/04/2015.
//  Copyright (c) 2015 Shujaat Web And Mob Developers. All rights reserved.
//

#import "ChatroomMessageCell.h"

@implementation ChatroomMessageCell

@synthesize userNameLabel = _userNameLabel;
@synthesize messageLabel  = _messageLabel;

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
