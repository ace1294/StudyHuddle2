//
//  Course.h
//  StudyHuddle
//
//  Created by Jason Dimitriou on 10/25/14.
//  Copyright (c) 2014 Study Huddle LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Course : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSArray *students;
@property (strong, nonatomic) NSString *professor;
@property (strong, nonatomic) NSArray *assignments;

@end
