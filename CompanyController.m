//
//  CompanyController.m
//  StartupCalculator2
//
//  Created by Ryan Allred on 7/12/14.
//  Copyright (c) 2014 Ryan Allred. All rights reserved.
//


#import "CompanyController.h"

static NSString * const companyListKey = @"companyList";

@interface CompanyController ()

@property (nonatomic, strong) NSArray *companies;

@end

@implementation CompanyController

//+ (CompanyController *)sharedInstance {
//    static CompanyController *sharedInstance = nil;
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        sharedInstance = [[CompanyController alloc] init];
//        
//        [sharedInstance loadFromDefaults];
//    });
//    return sharedInstance;
//}
//
//- (void)setCompanies:(NSArray *)companies {
//    self.companies = companies;
//    
//    [self synchronize];
//}

//- (void)addCompany:(Company *)company {
//    
//    if (!company) {
//        return;
//    }
//    
//    NSMutableArray *mutableCompany = [[NSMutableArray alloc] initWithArray:self.companies];
//    [mutableCompany addObject:company];
//    
//    self.companies = mutableCompany;
//}
//
//- (void)removeCompany:(Company *)company {
//    
//    if (!company) {
//        return;
//    }
//    
//    NSMutableArray *mutableCompany = self.companies.mutableCopy;
//    [mutableCompany removeObject:company];
//    
//    self.companies = mutableCompany;
//    
//}

//- (void)loadFromDefaults {
//    
//    NSArray *companyDictionaries = [[NSUserDefaults standardUserDefaults] objectForKey:companyListKey];
//    
//    NSMutableArray *companies = [NSMutableArray new];
//    for (NSDictionary *project in companyDictionaries) {
//        [companies addObject:[[Company alloc] initWithDictionary:company]];
//
//    }
//    
//    self.companies = companies;
//    
//}

//- (void)synchronize {
//    
//    NSMutableArray *companyDictionaries = [NSMutableArray new];
//    for (Company *company in self.companies) {
//        [companyDictionaries addObject:[company companyDictionaries]];
//    }
//    
//    [[NSUserDefaults standardUserDefaults] setObject:companyDictionaries forKey:companyListKey];
//    [[NSUserDefaults standardUserDefaults] synchronize];
//    
//}


@end
