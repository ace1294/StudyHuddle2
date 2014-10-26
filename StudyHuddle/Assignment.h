//
//  Assignment.h
//  StudyHuddle
//
//  Created by Jason Dimitriou on 10/25/14.
//  Copyright (c) 2014 Study Huddle LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Assignment : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSDate *due;
@property (nonatomic) float difficulty;
@property (nonatomic) float averageTime;

@end
