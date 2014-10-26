//
//  StudyLog.h
//  StudyHuddle
//
//  Created by Jason Dimitriou on 10/25/14.
//  Copyright (c) 2014 Study Huddle LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StudyLog : NSObject

@property (strong, nonatomic) NSDate *start;
@property (strong, nonatomic) NSDate *end;
@property (strong, nonatomic) NSMutableArray *assignments;
@property (strong, nonatomic) NSString *studentDescription;

@end
