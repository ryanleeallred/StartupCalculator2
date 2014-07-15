//
//  RACompanyTableViewDataSource.m
//  StartupCalculator2
//
//  Created by Ryan Allred on 7/12/14.
//  Copyright (c) 2014 Ryan Allred. All rights reserved.
//

#import "RACompanyTableViewDataSource.h"
#import "Company.h"
#import "CompanyController.h"

static NSString * const titleKey = @"Company";
const NSInteger margin = 5;

@interface RACompanyTableViewDataSource () <UITextFieldDelegate>

@property (nonatomic, strong) NSArray *ideas;
@property (nonatomic, weak) UITableView *tableView;

@end


@implementation RACompanyTableViewDataSource


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 5;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifier"];
    UITextField *companyName = [[UITextField alloc] initWithFrame:CGRectMake(margin, margin, 250, 40)];
    //companyName.backgroundColor = [UIColor blueColor];
    [cell addSubview:companyName];
    
    //cell.textLabel.text = @"This";
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
    
}

- (void)newCompany {
    
    // In order to save the cell if still editing we need to resign the responder and have the delegate methods called. So we reload the tableview before adding another idea
    
    NSMutableArray *mutableCompanies = [NSMutableArray arrayWithObject:@{titleKey: @""}];
    [mutableCompanies addObjectsFromArray:self.ideas];
    self.ideas = [NSArray arrayWithArray:mutableCompanies];
    
    [self.tableView reloadData];
}


- (void)registerTableView:(UITableView *)tableView {
    self.tableView = tableView;
    //[tableView registerClass:[AIVoiceTableViewCell class] forCellReuseIdentifier:VoiceCellKey];
}


@end
