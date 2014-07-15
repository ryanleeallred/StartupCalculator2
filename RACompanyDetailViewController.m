//
//  RACompanyDetailViewController.m
//  StartupCalculator2
//
//  Created by Ryan Allred on 7/12/14.
//  Copyright (c) 2014 Ryan Allred. All rights reserved.
//

#import "RACompanyDetailViewController.h"

const CGFloat margin = 20;
const CGFloat textFieldWidth = 280;
const CGFloat textFieldHeight = 40;

@interface RACompanyDetailViewController () <UITableViewDelegate>

//@property (nonatomic, strong) UITableView *tableView;

@end
@implementation RACompanyDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    UIView *view = [[UIView alloc] initWithFrame:self.view.bounds];
    view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:view];
    
    [super viewDidLoad];
    
    UITextField *companyTitle = [[UITextField alloc] initWithFrame:CGRectMake(margin, margin, textFieldWidth, textFieldHeight)];
    companyTitle.placeholder = @"Company Name";
    companyTitle.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:companyTitle];
    
    UITextField *numShares = [[UITextField alloc] initWithFrame:CGRectMake(margin, 80, textFieldWidth, textFieldHeight)];
    numShares.placeholder = @"Number of Shares";
    numShares.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:numShares];
    
    UITextField *foundingDate = [[UITextField alloc] initWithFrame:CGRectMake(margin, 140, textFieldWidth, textFieldHeight)];
    foundingDate.placeholder = @"Founding Date";
    foundingDate.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:foundingDate];
    
    //UIButton *done = [[UIButton alloc] init];
    //done.tag = @"DONE";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end