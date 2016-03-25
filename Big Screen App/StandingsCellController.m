//
//  StandingsCellController.m
//  Big Screen App
//
//  Created by Brandon Niedert on 3/12/16.
//  Copyright © 2016 Brandon Niedert. All rights reserved.
//

#import "StandingsCellController.h"

@implementation StandingsCellController

- (void) setUpCell:(NSString *)rank team:(NSString *)team record:(NSString *)record cupDifferential:(NSString *)cupDifferential color:(UIColor *)color{
    self.rank.text = rank;
    self.rank.textColor = color;
    self.team.text = team;
    self.team.textColor = color;
    self.record.text = record;
    self.record.textColor = color;
    self.cupDifferential.text = cupDifferential;
    self.cupDifferential.textColor = color;
    self.team.adjustsFontSizeToFitWidth = YES;
    self.teamLogo.image = [UIImage imageNamed:[team lowercaseString]];
    if (self.teamLogo.image){
        self.teamLogo.backgroundColor = [UIColor clearColor];
    }
    
}
@end

