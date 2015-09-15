//
//  FISPerson.h
//  ObjectOrientedPeople
//
//  Created by Danny Fenjves on 9/10/15.
//  Copyright (c) 2015 al-tyus.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISPerson : NSObject

@property(strong, nonatomic, readonly) NSString* name;

@property(nonatomic, readonly) NSUInteger ageInYears;

@property(nonatomic, readonly) NSUInteger heightInInches;

@property(strong, nonatomic, readonly) NSMutableArray* skills;
//
//init — the default initializer,
//initWithName:ageInYears: — a convenience initializer,
//initWithName:ageInYears:heightInInches: — a designated initializer,
//celebrateBirthday which returns an NSString,
//learnSkillBash which returns void,
//learnSkillXcode which returns void,
//learnSkillObjectiveC which returns void,
//learnSkillObjectOrientedProgramming which returns void,
//learnSkillInterfaceBuilder which returns void, and
//isQualifiedTutor which returns a BOOL.

-(instancetype)init;

-(instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger) ageInYears;

-(instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger) ageInYears heightInInches:(NSUInteger) heightInInches;

-(NSString *)celebrateBirthday;

-(void)learnSkillBash;

-(void)learnSkillXCode;

-(void)learnSkillObjectiveC;

-(void)learnSkillObjectOrientedProgramming;

-(void)learnSkillInterfaceBuilder;

-(BOOL)isQualifiedTutor;

@end
