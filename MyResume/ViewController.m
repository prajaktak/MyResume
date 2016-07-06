//
//  ViewController.m
//  MyResume
//
//  Created by Prajakta Kulkarni on 04/06/16.
//  Copyright © 2016 Prajakta Kulkarni. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *informationArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialiseInformation];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - table view -
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [informationArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = [informationArray objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{
}

#pragma mark - class methods -

-(void)initialiseInformation
{
    informationArray = [[NSMutableArray alloc] init];
    [informationArray addObject:@"LinkedIn"];
    [informationArray addObject:@"StackSocial"];
    [informationArray addObject:@"Blog"];
    [informationArray addObject:@"Education"];
    [informationArray addObject:@"Work experiance"];
    
}
@end
