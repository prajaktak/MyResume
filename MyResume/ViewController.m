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
@property (weak, nonatomic) IBOutlet UINavigationItem *resumeLabel;
@property (strong, nonatomic)NSMutableDictionary *resumeDictionary;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initialiseInformation];
    NSString *str=[[NSBundle mainBundle] pathForResource:@"ResumeJSON" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:str];
    NSError *error;
    if (data) {
        _resumeDictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
        NSLog(@"%@",_resumeDictionary);
    }
    [self showData];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)showData
{
    _resumeLabel.title = [_resumeDictionary valueForKey:@"name"];
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
