//
//  Company.h
//  StartupCalculator2
//
//  Created by Ryan Allred on 7/12/14.
//  Copyright (c) 2014 Ryan Allred. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Company : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSArray *entries;

//- (NSDictionary *)projectDictionary;
//- (id)initWithDictionary:(NSDictionary *)dictionary;
//
//- (NSString *)projectTime;
//
//- (void)startNewEntry;
//- (void)endCurrentEntry;

//- (void)addEntry:(Entry *)entry;
//- (void)removeEntry:(Entry *)entry;

//- (void)synchronize;

@end
