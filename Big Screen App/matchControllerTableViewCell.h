//
//  matchControllerTableViewCell.h
//  Big Screen App
//
//  Created by Brandon Niedert on 3/12/16.
//  Copyright © 2016 Brandon Niedert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Match.h"

@interface matchControllerTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *team1;
@property (weak, nonatomic) IBOutlet UILabel *team2;
@property (weak, nonatomic) IBOutlet UILabel *vsCupDifferential;

-(void)setUpCell:(Match *)match;


@end
