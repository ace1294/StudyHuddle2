//
//  UserData.h
//  StudyHuddle
//
//  Created by Jason Dimitriou on 10/25/14.
//  Copyright (c) 2014 Study Huddle LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserData : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *email;
@property (nonatomic) float gpa;
@property (strong, nonatomic) NSMutableArray *courses;
@property (strong, nonatomic) NSMutableArray *buddies;

@end
