//
//  VCFive42.m
//  我的share
//
//  Created by 王恬 on 2017/7/30.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCFive42.h"
#import "VCFive4.h"

@interface VCFive42 ()

@end

@implementation VCFive42

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem* left = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(press:)];
    self.navigationItem.leftBarButtonItem = left;
    left.tintColor = [UIColor whiteColor];
    
    UILabel* label = [[UILabel alloc]init];
    label.text = @"基本资料";
    label.font = [UIFont systemFontOfSize:17];
    [label setTextColor:[UIColor whiteColor]];
    label.frame = CGRectMake(49, 12, 100, 20);
    [self.navigationController.navigationBar addSubview:label];
    
    
    
    
    UITableView* tableView= [[UITableView alloc]initWithFrame:CGRectMake(10, 0, 355, 220) style:UITableViewStylePlain];
    
    
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    
    UIButton* btn1 = [[UIButton alloc]init];
    btn1.backgroundColor = [UIColor colorWithRed:64/255.0 green:64/255.0 blue:64/255.0 alpha:1];
    [btn1 setTitle:@"提交" forState:UIControlStateNormal];
    btn1.titleLabel.font = [UIFont systemFontOfSize:15];
    btn1.frame = CGRectMake(140, 250, 60, 30);
    btn1.layer.cornerRadius = 5;
    btn1.layer.masksToBounds = YES;
    btn1.tintColor = [UIColor whiteColor];
    [self.view addSubview:btn1];
    
    
}

- (void)press:(UIButton*)btn
{
    VCFive4* vc = [[VCFive4 alloc]init];
    UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
    [[UINavigationBar appearance]setTranslucent:YES];
    
    
    
    [self presentViewController:nav animated:nav completion:nil];
    

    
    
    
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1 ;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
   
    return 50;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *string = nil;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:string];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:string];
    }
    
    
 
    if (indexPath.section == 0&& indexPath.row == 0)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 80, 20)];
        label1.text = @"旧密码";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        
        UILabel* label2 = [[UILabel alloc]initWithFrame:CGRectMake(120, 15, 200, 20)];
        label2.text = @"6-20英文或数字结合";
        label2.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label2];
        
        
        
        
    }
    if (indexPath.section == 0&& indexPath.row == 1)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 80, 20)];
        label1.text = @"新密码";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UILabel* label2 = [[UILabel alloc]initWithFrame:CGRectMake(120, 15, 250, 20)];
        label2.text = @"6-20英文或数字结合";
        label2.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label2];
        
        
        
        
    }
    if (indexPath.section == 0&& indexPath.row == 2)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 80, 20)];
        label1.text = @"确认密码";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UILabel* label2 = [[UILabel alloc]initWithFrame:CGRectMake(120, 15, 250, 20)];
        label2.text = @"请再次确认输入密码";
        label2.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label2];
        

        
        
    }
    
    
    
    
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
