//
//  appController.m
//  StudyHuddle
//
//  Created by Jason Dimitriou on 10/25/14.
//  Copyright (c) 2014 Study Huddle LLC. All rights reserved.
//

#import "appController.h"
#import "Assignment.h"
#import "UserData.h"
#import "Course.h"
#import "StudyLog.h"

@interface appController()

@property (strong, nonatomic) NSMutableDictionary *students;

@property (strong, nonatomic) NSMutableArray *assignments;
@property (strong, nonatomic) NSMutableArray *courses;
@property (strong, nonatomic) NSMutableArray *studyLogs;

@end

@implementation appController

+ (id)sharedApp {
    static dispatch_once_t pred = 0;
    __strong static id _sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [[self alloc] init];
    });
    return _sharedObject;
}

- (id)init {
    self = [super init];
    if (self) {
        _students = [[NSMutableDictionary alloc]init];
        _assignments = [[NSMutableArray alloc]init];
        _courses = [[NSMutableArray alloc]init];
        _studyLogs = [[NSMutableArray alloc]init];
        
        [self loadData];
        
    }
    return self;
}

#pragma mark - Accessors 
- (NSArray *)userCourses{
    return [NSArray arrayWithArray:self.courses];
}

- (NSArray *)userAssignments{
    return [NSArray arrayWithArray:self.assignments];
}

- (NSArray *)userStudyLogs{
    return [NSArray arrayWithArray:self.studyLogs];
}


#pragma mark - Loading Data
- (void)loadData{
    [self loadAssignments];
    [self loadCourses];
    [self loadStudyLogs];
    
}

- (void)loadAssignments{
    
    for(int i = 0; i < 40; i++){
        
        Assignment *hw = [[Assignment alloc]init];
        
        if(i%4 == 0){
            hw.name = [NSString stringWithFormat:@"Assignment %u", arc4random() % 16];
        } else if (i%4 == 1){
            hw.name = [NSString stringWithFormat:@"Homework %u", arc4random() % 16];
        } else if (i%4 == 2){
            hw.name = [NSString stringWithFormat:@"Project %u", arc4random() % 16];
        } else {
            hw.name = [NSString stringWithFormat:@"Lab %u", arc4random() % 16];
        }
        
        hw.difficulty = arc4random() % 10;
        hw.averageTime = arc4random() % 8;
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setDay:i];
        [comps setMonth:10];
        [comps setYear:2014];
        hw.due = [[NSCalendar currentCalendar] dateFromComponents:comps];
        
        
        [self.assignments addObject:hw];
    }
    
}

- (void)loadCourses{
    Course *course = [[Course alloc]init];
    
    NSMutableArray *ass = [[NSMutableArray alloc]init];
    
    for(int i = 0; i < 10; i++){
        [ass addObject:self.assignments[i + (arc4random() % 4)]];
    }
    
    course.assignments = [NSArray arrayWithArray:ass];
    course.professor = @"Bob Metcalfe";
    course.name = @"CS377";
    course.students = @[@"Larry Unrein",
                        @"Bernetta Storms",
                        @"Lillia Cartledge",
                        @"Alyce Mucha",
                        @"Darci Harden",
                        @"Queenie Nova",
                        @"Darrell Simental",
                        @"Tamie Hollis",
                        @"Noel Noonan",
                        @"Coralie Woo",
                        @"Ingeborg Burlison",
                        @"Tonya Mendes",
                        @"Yvonne Lipe",
                        @"Florencio Mcfarlane",
                        @"Modesto Romaine",
                        @"Keturah Giron",
                        @"Renato Lindstedt",
                        @"Leandro Rhone",
                        @"Kyung Bohannan",
                        @"Ernie Stultz "];
    [self.courses addObject:course];
    
    course = [[Course alloc]init];
    
    ass = [[NSMutableArray alloc]init];
    
    for(int i = 10; i < 20; i++){
        [ass addObject:self.assignments[i + (arc4random() % 4)]];
    }
    
    course.assignments = [NSArray arrayWithArray:ass];
    course.professor = @"George Korchev";
    course.name = @"SPA601";
    course.students = @[@"Larry Unrein",
                        @"Bernetta Storms",
                        @"Lillia Cartledge",
                        @"Alyce Mucha",
                        @"Darci Harden",
                        @"Queenie Nova",
                        @"Darrell Simental",
                        @"Tamie Hollis",
                        @"Noel Noonan",
                        @"Coralie Woo",
                        @"Ingeborg Burlison",
                        @"Tonya Mendes",
                        @"Yvonne Lipe",
                        @"Florencio Mcfarlane",
                        @"Modesto Romaine",
                        @"Keturah Giron",
                        @"Renato Lindstedt",
                        @"Leandro Rhone",
                        @"Kyung Bohannan",
                        @"Ernie Stultz "];
    [self.courses addObject:course];
    
    course = [[Course alloc]init];
    
    ass = [[NSMutableArray alloc]init];
    
    for(int i = 20; i < 30; i++){
        [ass addObject:self.assignments[i + (arc4random() % 4)]];
    }
    
    course.assignments = [NSArray arrayWithArray:ass];
    course.professor = @"Marie Lawn";
    course.name = @"M340L";
    course.students = @[@"Larry Unrein",
                        @"Bernetta Storms",
                        @"Lillia Cartledge",
                        @"Alyce Mucha",
                        @"Darci Harden",
                        @"Queenie Nova",
                        @"Darrell Simental",
                        @"Tamie Hollis",
                        @"Noel Noonan",
                        @"Coralie Woo",
                        @"Ingeborg Burlison",
                        @"Tonya Mendes",
                        @"Yvonne Lipe",
                        @"Florencio Mcfarlane",
                        @"Modesto Romaine",
                        @"Keturah Giron",
                        @"Renato Lindstedt",
                        @"Leandro Rhone",
                        @"Kyung Bohannan",
                        @"Ernie Stultz "];
    [self.courses addObject:course];
    
    course = [[Course alloc]init];
    
    ass = [[NSMutableArray alloc]init];
    
    for(int i =30; i < 40; i++){
        [ass addObject:self.assignments[(i + (arc4random() % 4))%40]];
    }
    
    course.assignments = [NSArray arrayWithArray:ass];
    course.professor = @"John McCord";
    course.name = @"CHE301";
    course.students = @[@"Larry Unrein",
                        @"Bernetta Storms",
                        @"Lillia Cartledge",
                        @"Alyce Mucha",
                        @"Darci Harden",
                        @"Queenie Nova",
                        @"Darrell Simental",
                        @"Tamie Hollis",
                        @"Noel Noonan",
                        @"Coralie Woo",
                        @"Ingeborg Burlison",
                        @"Tonya Mendes",
                        @"Yvonne Lipe",
                        @"Florencio Mcfarlane",
                        @"Modesto Romaine",
                        @"Keturah Giron",
                        @"Renato Lindstedt",
                        @"Leandro Rhone",
                        @"Kyung Bohannan",
                        @"Ernie Stultz "];
    [self.courses addObject:course];
}

- (void)loadStudyLogs {
    
    StudyLog *log = [[StudyLog alloc]init];
    
    for(int i = 0; i < 15; i++){
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setDay:i];
        [comps setMinute:(i*(arc4random() % 4)+(arc4random() % 60))%60];
        [comps setHour:(i*(arc4random() % 2)+(arc4random() % 24))%24];
        log.start = [[NSCalendar currentCalendar] dateFromComponents:comps];
        
        [comps setMinute:comps.minute+(arc4random() % 60)];
        [comps setHour:comps.hour+(arc4random() % 24)];
        log.end = [[NSCalendar currentCalendar] dateFromComponents:comps];
        
        if(i%3 == 0){
            log.studentDescription = [NSString stringWithFormat:@"Struggled a bit on problem %i but finished with some outside help.", arc4random() % 24];
        } else if (i%3 == 1){
            log.studentDescription = [NSString stringWithFormat:@"Still did not finish problem %i", arc4random() % 24];
        } else{
            log.studentDescription = @"Got everything done, everything was straight forward";
        }
        
        int x = arc4random()%4;
        NSMutableArray *ass = [[NSMutableArray alloc]init];
        for(int y = 0; y < x; y++){
            [ass addObject:self.assignments[arc4random()%40]];
        }
        log.assignments = ass;
        [self.studyLogs addObject:log];
    }
}

@end
