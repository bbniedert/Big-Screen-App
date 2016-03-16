//
//  ViewController.m
//  Big Screen App
//
//  Created by Brandon Niedert on 3/10/16.
//  Copyright © 2016 Brandon Niedert. All rights reserved.
//

#import "ViewController.h"
#import "ParseOps.h"
#import "StandingsCellController.h"
#import "StandingsTeam.h"
#import "RoundViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *standingsTable;
@property (strong, nonatomic) NSString *standingsReuseIdentifier;
@property (strong, nonatomic) NSMutableArray *standings;
@property (weak, nonatomic) IBOutlet RoundViewController *r1;
@property (weak, nonatomic) IBOutlet RoundViewController *r2;
@property (weak, nonatomic) IBOutlet RoundViewController *r3;
@property (weak, nonatomic) IBOutlet RoundViewController *r4;
@property (weak, nonatomic) IBOutlet RoundViewController *r5;
@property (weak, nonatomic) IBOutlet RoundViewController *r6;
@property (weak, nonatomic) IBOutlet RoundViewController *r7;
@property (weak, nonatomic) IBOutlet RoundViewController *r8;
@property (weak, nonatomic) IBOutlet RoundViewController *r9;
@property (weak, nonatomic) IBOutlet RoundViewController *r10;
@property (weak, nonatomic) IBOutlet RoundViewController *r11;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.standingsReuseIdentifier = @"standings";
    self.standings = [[ParseOps sharedOps] getStandings];
    
    [self.standingsTable registerNib:[UINib nibWithNibName:@"StandingsCell" bundle:nil] forCellReuseIdentifier:self.standingsReuseIdentifier];
    
    self.standingsTable.dataSource = self;
    self.standingsTable.delegate = self;
    [self.standingsTable setScrollEnabled:NO];
    [self.standingsTable setBackgroundColor:[UIColor grayColor]];
    self.standingsTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [NSTimer scheduledTimerWithTimeInterval:30
                                     target:self
                                   selector:@selector(refreshStandings)
                                   userInfo:nil
                                    repeats:YES];
    [self.r1 setUpRoundView:1];
    [self.r2 setUpRoundView:2];
    [self.r3 setUpRoundView:3];
    [self.r4 setUpRoundView:4];
    [self.r5 setUpRoundView:5];
    [self.r6 setUpRoundView:6];
    [self.r7 setUpRoundView:7];
    [self.r8 setUpRoundView:8];
    [self.r9 setUpRoundView:9];
    [self.r10 setUpRoundView:10];
    [self.r11 setUpRoundView:11];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.standings.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    BOOL isEven = indexPath.row % 2 == 0;
    UIColor *color = (isEven) ? [UIColor lightGrayColor] : [UIColor grayColor];
    UIColor *textColor = (isEven ? [UIColor blackColor] : [UIColor whiteColor]);
    StandingsTeam *team = [self.standings objectAtIndex:indexPath.row];
    NSString *rank = [NSString stringWithFormat:@"%lu", (long)indexPath.row + 1];
    NSString *teamName = team.teamName;
    NSString *record = [NSString stringWithFormat:@"%ld - %ld", (long)team.wins, (long)team.losses];
    NSString *postive = (team.cupDifferential > 0) ? @"+" : @"";
    NSString *cupDifferential = [NSString stringWithFormat:@"%@%ld", postive, (long)team.cupDifferential];
    StandingsCellController *cell = [self.standingsTable dequeueReusableCellWithIdentifier:self.standingsReuseIdentifier];
    [cell setBackgroundColor:color];
    [cell setUpCell:rank team:teamName record:record cupDifferential:cupDifferential color:textColor];
    
    return cell;
}

- (void)refreshStandings{
    NSLog(@"Refreshing...");
    self.standings = [[ParseOps sharedOps] getStandings];
    [self.standingsTable reloadData];
}

@end
