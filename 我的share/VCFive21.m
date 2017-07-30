//
//  VCFive21.m
//  我的share
//
//  Created by 王恬 on 2017/7/30.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCFive21.h"
#import "VCFive2.h"
#import "VCFive211.h"

@interface VCFive21 ()

@end

@implementation VCFive21

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem* left = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(press:)];
    self.navigationItem.leftBarButtonItem = left;
    left.tintColor = [UIColor whiteColor];
    
    UILabel* label = [[UILabel alloc]init];
    label.text = @"私信";
    label.font = [UIFont systemFontOfSize:17];
    [label setTextColor:[UIColor whiteColor]];
    label.frame = CGRectMake(49, 12, 100, 20);
    [self.navigationController.navigationBar addSubview:label];
    
    UITableView* tableView= [[UITableView alloc]initWithFrame:CGRectMake(10, 0, 355, 400) style:UITableViewStylePlain];
    
    
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    
    
    
}
- (void)press:(UIButton*)btn
{
    VCFive2* vc = [[VCFive2 alloc]init];
    UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
    [[UINavigationBar appearance]setTranslucent:YES];
    
    
    
    [self presentViewController:nav animated:YES completion:nil];

}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1 ;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 80;
    
}
- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0 && indexPath.row == 1) {
        VCFive211* vc = [[VCFive211 alloc]init];
        UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc];
        
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
        [[UINavigationBar appearance]setTranslucent:YES];
        
        
        
        [self presentViewController:nav animated:YES completion:nil];

    }
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
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(105, 20, 80, 20)];
        label1.text = @"share小格";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sixin_img1的副本"]];
        image2.frame = CGRectMake(35, 15,50, 50);
        [cell addSubview:image2];
        
        
        UILabel* label2 = [[UILabel alloc]initWithFrame:CGRectMake(105, 45, 200, 20)];
        label2.text = @"你的作品我很喜欢！！！";
        label2.font = [UIFont systemFontOfSize:13];
        label2.textColor = [UIColor colorWithRed:52/255.0 green:119/255.0 blue:206/255.0 alpha:1];
        [cell addSubview:label2];
        
        UILabel* label3 = [[UILabel alloc]initWithFrame:CGRectMake(280, 25, 100, 10)];
        label3.text = @"11-03 09:45";
        label3.font = [UIFont systemFontOfSize:10];
        label3.textColor = [UIColor colorWithRed:184/255.0 green:184/255.0 blue:184/255.0 alpha:1];
        [cell addSubview:label3];
        
        
        
        
    }
    if (indexPath.section == 0&& indexPath.row == 1)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(105, 20, 80, 20)];
        label1.text = @"share小兰";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sixin_img2"]];
        image2.frame = CGRectMake(35, 15,50, 50);
        [cell addSubview:image2];
        
        
        UILabel* label2 = [[UILabel alloc]initWithFrame:CGRectMake(105, 45, 200, 20)];
        label2.text = @"谢谢，已关注你";
        label2.font = [UIFont systemFontOfSize:13];
        label2.textColor = [UIColor colorWithRed:52/255.0 green:119/255.0 blue:206/255.0 alpha:1];
        [cell addSubview:label2];
        
        UILabel* label3 = [[UILabel alloc]initWithFrame:CGRectMake(280, 25, 100, 10)];
        label3.text = @"11-03 10:00";
        label3.font = [UIFont systemFontOfSize:10];
        label3.textColor = [UIColor colorWithRed:184/255.0 green:184/255.0 blue:184/255.0 alpha:1];
        [cell addSubview:label3];
    }
    if (indexPath.section == 0&& indexPath.row == 2)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(105, 20, 80, 20)];
        label1.text = @"share小明";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sixin_img3"]];
        image2.frame = CGRectMake(35, 15,50, 50);
        [cell addSubview:image2];
        
        
        UILabel* label2 = [[UILabel alloc]initWithFrame:CGRectMake(105, 45, 200, 20)];
        label2.text = @"为你点赞！";
        label2.font = [UIFont systemFontOfSize:13];
        label2.textColor = [UIColor colorWithRed:52/255.0 green:119/255.0 blue:206/255.0 alpha:1];
        [cell addSubview:label2];
        
        UILabel* label3 = [[UILabel alloc]initWithFrame:CGRectMake(280, 25, 100, 10)];
        label3.text = @"11-03 10:23";
        label3.font = [UIFont systemFontOfSize:10];
        label3.textColor = [UIColor colorWithRed:184/255.0 green:184/255.0 blue:184/255.0 alpha:1];
        [cell addSubview:label3];
    }
    if (indexPath.section == 0&& indexPath.row == 3)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(105, 20, 80, 20)];
        label1.text = @"share小雪";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sixin_img4"]];
        image2.frame = CGRectMake(35, 15,50, 50);
        [cell addSubview:image2];
        
        
        UILabel* label2 = [[UILabel alloc]initWithFrame:CGRectMake(105, 45, 200, 20)];
        label2.text = @"你好可以问问你是怎么拍的吗？";
        label2.font = [UIFont systemFontOfSize:13];
        label2.textColor = [UIColor colorWithRed:52/255.0 green:119/255.0 blue:206/255.0 alpha:1];
        [cell addSubview:label2];
        
        UILabel* label3 = [[UILabel alloc]initWithFrame:CGRectMake(280, 25, 100, 10)];
        label3.text = @"11-03 11:20";
        label3.font = [UIFont systemFontOfSize:10];
        label3.textColor = [UIColor colorWithRed:184/255.0 green:184/255.0 blue:184/255.0 alpha:1];
        [cell addSubview:label3];
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
