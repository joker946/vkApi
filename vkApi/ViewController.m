//
//  ViewController.m
//  vkApi
//
//  Created by Alex Chadin on 2/14/13.
//  Copyright (c) 2013 Alex Chadin. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    array=[[NSMutableArray alloc]initWithObjects:@"Hello",@"World", nil];
#warning testsomething
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableHeaderFooterViewWithIdentifier:@"Cell"];
    if (cell==nil){
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.textLabel.text=array[indexPath.row];
    return cell;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [array count];
}
-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index{
    return 1;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    SecondViewController *v1 = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    [self.navigationController pushViewController:v1 animated:YES];
}
-(void)pushButton:(id)sender{
    SecondViewController *v1 = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    [self.navigationController pushViewController:v1 animated:YES];
}
@end
