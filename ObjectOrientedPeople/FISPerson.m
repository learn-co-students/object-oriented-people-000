//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Molly Gingras on 2/8/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson ()

@property (strong, nonatomic, readwrite) NSString *name;
@property (nonatomic, readwrite) NSUInteger ageInYears;
@property (nonatomic, readwrite) NSUInteger heightInInches;
@property (strong, nonatomic, readwrite) NSMutableArray *skills;

@end

@implementation FISPerson

- (instancetype)init{
    self = [self initWithName:@"Molly" ageInYears:28 heightInInches:66];
    return self;
}

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears{
    self = [self initWithName:name ageInYears:ageInYears heightInInches:66];
    return self;
}

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches{
    self = [super init];
    if (self) {
        _name = name;
        _ageInYears = ageInYears;
        _heightInInches = heightInInches;
        _skills = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSString *)celebrateBirthday{
    self.ageInYears++;
    NSString *birthdayGreeting = [NSString stringWithFormat:@"Happy %li%@ birthday, %@!!!", self.ageInYears, [self ordinalForInteger:self.ageInYears], self.name].uppercaseString;
    NSLog(@"%@", birthdayGreeting);
    return birthdayGreeting;
}

- (void)learnSkillBash{
    [self learnSkill:@"bash"];
}

- (void)learnSkillXcode{
    [self learnSkill:@"Xcode"];
}

- (void)learnSkillObjectiveC{
    [self learnSkill:@"Objective-C"];
}

- (void)learnSkillObjectOrientedProgramming{
    [self learnSkill:@"Object-Oriented Programming"];
}

- (void)learnSkillInterfaceBuilder{
    [self learnSkill:@"Interface Builder"];
}

- (BOOL)isQualifiedTutor{
    return self.skills.count > 3;
}


- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
}

- (void)learnSkill:(NSString *)skill{
    if (![self.skills containsObject:skill]){
        [self.skills addObject:skill];
    }
}

@end
