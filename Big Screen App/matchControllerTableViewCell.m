//
//  matchControllerTableViewCell.m
//  Big Screen App
//
//  Created by Brandon Niedert on 3/12/16.
//  Copyright © 2016 Brandon Niedert. All rights reserved.
//

#import "matchControllerTableViewCell.h"

@implementation matchControllerTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setUpCell:(Match *)match{
    self.team1.text = @"hello";
    self.team2.text = @"goodbye";
}

@end
