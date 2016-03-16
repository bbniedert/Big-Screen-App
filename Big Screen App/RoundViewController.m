//
//  RoundViewController.m
//  Big Screen App
//
//  Created by Brandon Niedert on 3/12/16.
//  Copyright © 2016 Brandon Niedert. All rights reserved.
//

#import "RoundViewController.h"
#import "ParseOps.h"
#import "matchControllerTableViewCell.h"
#import "Match.h"

@interface RoundViewController ()

@end

@implementation RoundViewController 

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id) initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    
    if (self){
        [[NSBundle mainBundle] loadNibNamed:@"RoundView" owner:self options:nil];
    }
    return self;
}

- (void)setUpRoundView:(int)roundNum{
    self.round = [[ParseOps sharedOps] getRoundSchedule:roundNum];
    self.roundLabel.text = [NSString stringWithFormat:@"Round %d", roundNum];
    
    [self addSubview:self.view];
    
    [self setMatchesUp];
    
    [NSTimer scheduledTimerWithTimeInterval:30
                                     target:self
                                   selector:@selector(refresh)
                                   userInfo:nil
                                    repeats:YES];

}


-(void)refresh{
    NSLog(@"loading");
    int roundNum = [[ParseOps sharedOps] getRoundToGet];
    self.round = [[ParseOps sharedOps] getRoundSchedule:roundNum+1];
    [self setMatchesUp];
}

-(void)setMatchesUp{
    int i = 1;
    for (Match *match in self.round.matches){
        switch (i){
            case 1:
                self.t1m1.text = match.team1;
                self.t2m1.text = match.team2;
                [self updateMatchUI:self.t1m1 team2:self.t2m1 cd:self.m1cd match:match];
                
                self.t1m1.adjustsFontSizeToFitWidth = YES;
                self.t2m1.adjustsFontSizeToFitWidth = YES;
                self.m1cd.adjustsFontSizeToFitWidth = YES;
                break;
            case 2:
                self.t1m2.text = match.team1;
                self.t2m2.text = match.team2;
                [self updateMatchUI:self.t1m2 team2:self.t2m2 cd:self.m2cd match:match];
                
                self.t1m2.adjustsFontSizeToFitWidth = YES;
                self.t2m2.adjustsFontSizeToFitWidth = YES;
                self.m2cd.adjustsFontSizeToFitWidth = YES;
                break;
            case 3:
                self.t1m3.text = match.team1;
                self.t2m3.text = match.team2;
                [self updateMatchUI:self.t1m3 team2:self.t2m3 cd:self.m3cd match:match];
                
                self.t1m3.adjustsFontSizeToFitWidth = YES;
                self.t2m3.adjustsFontSizeToFitWidth = YES;
                self.m3cd.adjustsFontSizeToFitWidth = YES;
                break;
            case 4:
                self.t1m4.text = match.team1;
                self.t2m4.text = match.team2;
                [self updateMatchUI:self.t1m4 team2:self.t2m4 cd:self.m4cd match:match];
                
                self.t1m4.adjustsFontSizeToFitWidth = YES;
                self.t2m4.adjustsFontSizeToFitWidth = YES;
                self.m4cd.adjustsFontSizeToFitWidth = YES;
                break;
            case 5:
                self.t1m5.text = match.team1;
                self.t2m5.text = match.team2;
                [self updateMatchUI:self.t1m5 team2:self.t2m5 cd:self.m5cd match:match];
                
                self.t1m5.adjustsFontSizeToFitWidth = YES;
                self.t2m5.adjustsFontSizeToFitWidth = YES;
                self.m5cd.adjustsFontSizeToFitWidth = YES;
                break;
            case 6:
                self.t1m6.text = match.team1;
                self.t2m6.text = match.team2;
                [self updateMatchUI:self.t1m6 team2:self.t2m6 cd:self.m6cd match:match];
                
                self.t1m6.adjustsFontSizeToFitWidth = YES;
                self.t2m6.adjustsFontSizeToFitWidth = YES;
                self.m6cd.adjustsFontSizeToFitWidth = YES;
                break;
            default:
                break;
        }
        i++;
    }
}
-(void)updateMatchUI:(UILabel*)team1 team2:(UILabel*)team2 cd:(UILabel*)cd match:(Match*)match{
    if (match.winner <= 0){
        team1.textColor = [UIColor blackColor];
        team2.textColor = [UIColor blackColor];
        cd.text = @"VS";
        return;
    }
    cd.text = (match.cupDifferential == 1) ? [NSString stringWithFormat:@"%ld\ncup",(long)match.cupDifferential] : [NSString stringWithFormat:@"%ld\ncups",(long)match.cupDifferential];
    if (match.winner == 1){
        team1.text = [NSString stringWithFormat:@"%@ ◄", match.team1];
        team1.textColor = [UIColor blackColor];
        team2.textColor = [UIColor grayColor];
    }
    else if (match.winner == 2){
        team2.text = [NSString stringWithFormat:@"► %@", match.team2];
        team2.textColor = [UIColor blackColor];
        team1.textColor = [UIColor grayColor];
    }
}

@end
