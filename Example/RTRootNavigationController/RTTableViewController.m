//
//  RTTableViewController.m
//  RTRootNavigationController
//
//  Created by ricky on 16/6/9.
//  Copyright © 2016年 rickytan. All rights reserved.
//

#import "RTTableViewController.h"

@interface RTTableViewController ()

@end

@implementation RTTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = [NSString stringWithFormat:@"Row: %d", indexPath.row];
    
    return cell;
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    CGPoint point = [scrollView.panGestureRecognizer velocityInView:scrollView];
    if (point.y > 120.0) {
        [self.navigationController setNavigationBarHidden:NO
                                                 animated:YES];
    }
    else if (point.y < -120.0) {
        [self.navigationController setNavigationBarHidden:YES
                                                 animated:YES];
    }
}

@end
