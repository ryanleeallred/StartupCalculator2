//
//  RAViewController.m
//  StartupCalculator2
//
//  Created by Ryan Allred on 7/12/14.
//  Copyright (c) 2014 Ryan Allred. All rights reserved.
//

#import "RAViewController.h"
#import "RACompanyTableViewDataSource.h"
#import "Company.h"
#import "CompanyController.h"
#import "RACompanyDetailViewController.h"

@interface RAViewController () <UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

//@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) RACompanyTableViewDataSource *dataSource;
@property (nonatomic, strong) RACompanyDetailViewController *viewController;

@end

@implementation RAViewController

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
    [super viewDidLoad];
    self.title = @"Your Companies";
    
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds];
    tableView.delegate = self; //links the
    //myTable.title = @"reipes.com";
    [self.view addSubview: tableView];
    
    // Instantiate a new TableViewDataSource: It has to have the same title as your data source header and implementation files.
    
    RACompanyTableViewDataSource *companyDataSource = [RACompanyTableViewDataSource new];
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"identifier"];
    self.dataSource = companyDataSource;
    
    tableView.dataSource = companyDataSource;
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addCompany)];
    self.navigationItem.rightBarButtonItem = addButton;

}

- (void)addCompany {
    //Company *company = [Company new];
    //[[CompanyController sharedInstance] addCompany:company];
    
    RACompanyDetailViewController *viewController = [RACompanyDetailViewController new];
    
    
        //viewController.company = company;
    
    [self.navigationController pushViewController:viewController animated:YES];
}

//- (void)newIdea {
//    [self.dataSource newCompany];
//    [self.tableView reloadData];
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
