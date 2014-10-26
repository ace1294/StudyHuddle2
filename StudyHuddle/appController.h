//
//  appController.h
//  StudyHuddle
//
//  Created by Jason Dimitriou on 10/25/14.
//  Copyright (c) 2014 Study Huddle LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface appController : NSObject

+ (id)sharedApp;


- (NSArray *)userCourses;
- (NSArray *)userStudyLogs;
- (NSArray *)userAssignments;


@end
