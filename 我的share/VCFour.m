//
//  VCFour.m
//  我的share
//
//  Created by 王恬 on 2017/7/26.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCFour.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFour.h"
#import "VCFive.h"

@interface VCFour ()

@end

@implementation VCFour

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.view.backgroundColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    titleLabel.font = [UIFont boldSystemFontOfSize:22];
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.text = @"SHARE";
    self.navigationItem.titleView = titleLabel;
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.alpha = 0;
    
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    
    UITableView* tableView= [[UITableView alloc]initWithFrame:CGRectMake(10, 0, 355, 667) style:UITableViewStylePlain];
 
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    UIBarButtonItem* left = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(press1:)];
    self.navigationItem.leftBarButtonItem = left;
    left.tintColor = [UIColor whiteColor];

    
    
    
    
    
}

- (void)press1:(UIButton *)btn
{
        VCFirst* one = [[VCFirst alloc]init];
        UINavigationController* nav1 = [[UINavigationController alloc]initWithRootViewController:one];
        nav1.tabBarItem.image = [[UIImage imageNamed:@"radio_button1_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        nav1.tabBarItem.selectedImage = [[UIImage imageNamed:@"radio_button1_pressed"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        VCSecond* two = [[VCSecond alloc]init];
        UINavigationController* nav2 = [[UINavigationController alloc]initWithRootViewController:two];
        nav2.tabBarItem.image = [[UIImage imageNamed:@"radio_button2_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        nav2.tabBarItem.selectedImage = [[UIImage imageNamed:@"radio_button2_pressed"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        VCThird* three = [[VCThird alloc]init];
        UINavigationController* nav3 = [[UINavigationController alloc]initWithRootViewController:three];
        nav3.tabBarItem.image = [[UIImage imageNamed:@"radio_button3_normal"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        nav3.tabBarItem.selectedImage = [[UIImage imageNamed:@"radio_button3_pressed"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        VCFour* four = [[VCFour alloc]init];
        UINavigationController* nav4 = [[UINavigationController alloc]initWithRootViewController:four];
        nav4.tabBarItem.image = [[UIImage imageNamed:@"radio_button4_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        nav4.tabBarItem.selectedImage = [[UIImage imageNamed:@"radio_button4_pressed"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        ;
        
        VCFive* five = [[VCFive alloc]init];
        UINavigationController* nav5 = [[UINavigationController alloc]initWithRootViewController:five];
        nav5.tabBarItem.image = [[UIImage imageNamed:@"radio_button5_normal"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        nav5.tabBarItem.selectedImage = [[UIImage imageNamed:@"radio_button5_pressed"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
        [[UINavigationBar appearance]setTranslucent:YES];
        
        UITabBarController* tabC =[[UITabBarController alloc]init];
        tabC.viewControllers = [NSArray arrayWithObjects:nav1,nav2,nav3,nav4,nav5,nil];
    
        tabC.selectedIndex = 3;
    
        [self presentViewController:tabC animated:YES completion:nil];
        

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *string = nil;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:string];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:string];
    }
    if (indexPath.section == 0 && indexPath.row == 0)
    {
        
        UIImageView* imageV1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"main_img2"]];
        imageV1.frame = CGRectMake(0, 0, 355, 170);
        [cell addSubview:imageV1];
        UILabel* label1 = [[UILabel alloc]init];
        label1.text = @"下厨也要美美的，从一条围裙开始一六月鲜围裙创意设计大赛";
        label1.font = [UIFont systemFontOfSize:11];
        label1.frame = CGRectMake(10, 170, 355, 25);
        [cell addSubview:label1];
        
        
        
        
    }
    if (indexPath.section == 1 && indexPath.row == 0)
    {
        
        UIImageView* imageV1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"main_img4"]];
        imageV1.frame = CGRectMake(0, 0, 355, 170);
        [cell addSubview:imageV1];
        UILabel* label1 = [[UILabel alloc]init];
        label1.text = @"MIUI主题市场让你的创意改变世界";
        label1.font = [UIFont systemFontOfSize:11];
        label1.frame = CGRectMake(10, 170, 355, 25);
        [cell addSubview:label1];
        
        
        
        
    }
    
    if (indexPath.section == 2 && indexPath.row == 0)
    {
        
        UIImageView* imageV1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"main_img1"]];
        imageV1.frame = CGRectMake(0, 0, 355, 170);
        [cell addSubview:imageV1];
        UILabel* label1 = [[UILabel alloc]init];
        label1.text = @"千万花粉为你来，华为花粉吉祥物设计大赛";
        label1.font = [UIFont systemFontOfSize:11];
        label1.frame = CGRectMake(10, 170, 355, 25);
        [cell addSubview:label1];
        
        
        
        
    }
    

    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3 ;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 195;
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
