//
//  StandingsCellController.h
//  Big Screen App
//
//  Created by Brandon Niedert on 3/12/16.
//  Copyright © 2016 Brandon Niedert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StandingsCellController : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *rank;
@property (weak, nonatomic) IBOutlet UILabel *team;
@property (weak, nonatomic) IBOutlet UILabel *record;
@property (weak, nonatomic) IBOutlet UILabel *cupDifferential;

- (void) setUpCell:(NSString *)rank team:(NSString *)team record:(NSString *)record cupDifferential:(NSString *)cupDifferential color:(UIColor *)color;


@end
