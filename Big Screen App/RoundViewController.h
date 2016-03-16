//
//  RoundViewController.h
//  Big Screen App
//
//  Created by Brandon Niedert on 3/12/16.
//  Copyright © 2016 Brandon Niedert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Round.h"

@interface RoundViewController : UIView

@property (strong, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UILabel *roundLabel;

@property (strong, nonatomic) NSString *matchReuseIdentifier;
@property (strong, nonatomic) NSMutableArray *matches;
@property (strong, nonatomic) Round *round;

//Teams
@property (weak, nonatomic) IBOutlet UILabel *t1m1;
@property (weak, nonatomic) IBOutlet UILabel *t1m2;
@property (weak, nonatomic) IBOutlet UILabel *t1m3;
@property (weak, nonatomic) IBOutlet UILabel *t1m4;
@property (weak, nonatomic) IBOutlet UILabel *t1m5;
@property (weak, nonatomic) IBOutlet UILabel *t1m6;
@property (weak, nonatomic) IBOutlet UILabel *t2m1;
@property (weak, nonatomic) IBOutlet UILabel *t2m2;
@property (weak, nonatomic) IBOutlet UILabel *t2m3;
@property (weak, nonatomic) IBOutlet UILabel *t2m4;
@property (weak, nonatomic) IBOutlet UILabel *t2m5;
@property (weak, nonatomic) IBOutlet UILabel *t2m6;

@property (weak, nonatomic) IBOutlet UILabel *m1cd;
@property (weak, nonatomic) IBOutlet UILabel *m2cd;
@property (weak, nonatomic) IBOutlet UILabel *m3cd;
@property (weak, nonatomic) IBOutlet UILabel *m4cd;
@property (weak, nonatomic) IBOutlet UILabel *m5cd;
@property (weak, nonatomic) IBOutlet UILabel *m6cd;

- (void)setUpRoundView:(int)roundNum;


@end
