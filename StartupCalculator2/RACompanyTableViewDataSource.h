//
//  RACompanyTableViewDataSource.h
//  StartupCalculator2
//
//  Created by Ryan Allred on 7/12/14.
//  Copyright (c) 2014 Ryan Allred. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RACompanyTableViewDataSource : NSObject <UITableViewDataSource>

- (void)newCompany;
- (void)registerTableView:(UITableView *)tableView;

@end

