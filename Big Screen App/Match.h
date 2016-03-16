//
//  Match.h
//  TwentyOneTournament2016
//
//  Created by Brandon Niedert on 11/5/15.
//  Copyright © 2015 21Tournament. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Match : NSObject

@property NSString *team1;
@property NSString *team2;
@property NSString *team1ID;
@property NSString *team2ID;
@property NSInteger winner;
@property NSInteger cupDifferential;
@property NSString *objectID;
@property NSString *team1Record;
@property NSString *team2Record;

-(id) init:(NSString *)objectID team1:(NSString *)team1 team2:(NSString *)team2 team1ID:(NSString *)team1ID team2ID:(NSString *)team2ID cd:(NSInteger)cd winner:(NSInteger)winner team1Record:(NSString *)team1Record team2Record:(NSString *)team2Record;

@end
