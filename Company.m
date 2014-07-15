//
//  Company.m
//  StartupCalculator2
//
//  Created by Ryan Allred on 7/12/14.
//  Copyright (c) 2014 Ryan Allred. All rights reserved.
//

#import "Company.h"
#import "CompanyController.h"

static NSString * const titleKey = @"title";
static NSString * const entriesKey = @"entries";

@interface Company ()

//@property (nonatomic, strong) Entry *currentEntry;

@end

@implementation Company

//- (id)initWithDictionary:(NSDictionary *)dictionary {
//    self = [super init];
//    if (self) {
//        _title = dictionary[titleKey];
//        
//        NSMutableArray *entries = [NSMutableArray new];
//        for (NSDictionary *entry in dictionary[entriesKey]) {
//            [entries addObject:[[Entry alloc] initWithDictionary:entry]];
//        }
//        
//        _entries = entries;
//        
//    }
//    return self;
//}

//- (NSDictionary *)companyDictionary {
//    
//    NSMutableDictionary *companyDictionary = [NSMutableDictionary new];
//    if (self.title) {
//        [companyDictionary setObject:self.title forKey:titleKey];
//    }
//    
//    NSMutableArray *entries = [NSMutableArray new];
//    for (Entry *entry in self.entries) {
//        [entries addObject:[entry entryDictionary]];
//    }
//    [companyDictionary setObject:entries forKey:entriesKey];
//    
//    return companyDictionary;
//}

//- (NSString *)projectTime {
//    
//    NSInteger totalHours = 0;
//    NSInteger totalMinutes = 0;
//    
//    for (Entry *entry in self.entries) {
//        
//        NSTimeInterval distanceBetweenDates = [entry.endTime timeIntervalSinceDate:entry.startTime];
//        
//        // First we'll see how many hours
//        double secondsInAnHour = 3600;
//        NSInteger hoursBetweenDates = distanceBetweenDates / secondsInAnHour;
//        
//        // We need to subtract out the hours and then see how many minutes
//        double secondsInAMinute = 60;
//        NSInteger minutesBetweenDates = (distanceBetweenDates - (hoursBetweenDates * secondsInAnHour)) / secondsInAMinute;
//        
//        totalHours += hoursBetweenDates;
//        totalMinutes += minutesBetweenDates;
//        
//    }
//    
//    // If the hour or minute total is less than 10, we want a 0 before it in the string
//    
//    NSString *hourString = totalHours < 10 ? [NSString stringWithFormat:@"0%ld", (long)totalHours] : [NSString stringWithFormat:@"%ld", (long)totalHours];
//    
//    NSString *minuteString = totalMinutes < 10 ? [NSString stringWithFormat:@"0%ld", (long)totalMinutes] : [NSString stringWithFormat:@"%ld", (long)totalMinutes];
//    
//    return [NSString stringWithFormat:@"%@:%@", hourString, minuteString];
//}

//- (void)synchronize {
//    
//    [[CompanyController sharedInstance] synchronize];
//    
//}

//- (void)setEntries:(NSArray *)entries {
//    _entries = entries;
//    
//    [self synchronize];
//}

//- (void)startNewEntry {
//    
//    Entry *entry = [Entry new];
//    entry.startTime = [NSDate date];
//    
//    self.currentEntry = entry;
//    
//    [self addEntry:entry];
//    
//}

//- (void)endCurrentEntry {
//    
//    self.currentEntry.endTime = [NSDate date];
//    [self synchronize];
//    
//}

//- (void)addEntry:(Entry *)entry {
//    
//    if (!entry) {
//        return;
//    }
//    
//    NSMutableArray *mutableEnries = [[NSMutableArray alloc] initWithArray:self.entries];
//    [mutableEnries addObject:entry];
//    
//    self.entries = mutableEnries;
//    
//}

//- (void)removeEntry:(Entry *)entry {
//    
//    if (!entry) {
//        return;
//    }
//    
//    NSMutableArray *mutableEntries = self.entries.mutableCopy;
//    [mutableEntries removeObject:entry];
//    
//    self.entries = mutableEntries;
//    
//}

@end
