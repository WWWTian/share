//
//  VCFive4.m
//  我的share
//
//  Created by 王恬 on 2017/7/30.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCFive4.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFour.h"
#import "VCFive.h"
#import "VCFive41.h"
#import "VCFive42.h"
#import "VCFive43.h"

@interface VCFive4 ()

@end

@implementation VCFive4

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem* left = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(press:)];
    self.navigationItem.leftBarButtonItem = left;
    left.tintColor = [UIColor whiteColor];
    
    UILabel* label = [[UILabel alloc]init];
    label.text = @"设置";
    label.font = [UIFont systemFontOfSize:17];
    [label setTextColor:[UIColor whiteColor]];
    label.frame = CGRectMake(49, 12, 100, 20);
    [self.navigationController.navigationBar addSubview:label];
    
    UITableView* tableView= [[UITableView alloc]initWithFrame:CGRectMake(10, 0, 355, 330) style:UITableViewStylePlain];
    
    
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1 ;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
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
    
    //    _contentArray = [NSArray arrayWithObjects:@"我上传的",@"我的信息",@"我推荐的",@"院系通知", @"设置",@"退出", nil];
    //    _imageArray = [NSArray arrayWithObjects:@"我的消息",@"会员",@"商城",@"文件夹", @"设置",@"扫一扫",@"换肤",@"灯泡",@"定时",@"闹钟",@"车",@"分享",@"关于",nil];
    
    if (indexPath.section == 0&& indexPath.row == 0)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 80, 20)];
        label1.text = @"基本资料";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img3"]];
        image2.frame = CGRectMake(270, 20, 13, 13);
        [cell addSubview:image2];
        
    }
    if (indexPath.section == 0&& indexPath.row == 1)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 80, 20)];
        label1.text = @"修改密码";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img3"]];
        image2.frame = CGRectMake(270, 20, 13, 13);
        [cell addSubview:image2];
        
      
        
        
    }
    if (indexPath.section == 0&& indexPath.row == 2)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 80, 20)];
        label1.text = @"消息设置";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img3"]];
        image2.frame = CGRectMake(270, 20, 13, 13);
        [cell addSubview:image2];
        
      
    }
    if (indexPath.section == 0&& indexPath.row == 3)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 80, 20)];
        label1.text = @"关于SHARE";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img3"]];
        image2.frame = CGRectMake(270, 20, 13, 13);
        [cell addSubview:image2];
      
        
    }
    if (indexPath.section == 0&& indexPath.row == 4)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 80, 20)];
        label1.text = @"清除缓存";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img3"]];
        image2.frame = CGRectMake(270, 20, 13, 13);
        [cell addSubview:image2];
        
        
    }
    
    
    
    
    return cell;
}



- (void)press:(UIButton*)btn
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
    tabC.selectedIndex = 4;
    
    [self presentViewController:tabC animated:YES completion:nil];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];

    if (indexPath.section == 0 && indexPath.row == 0) {
        
        VCFive41 *vc = [[VCFive41 alloc]init];
        UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc];
        
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
        [[UINavigationBar appearance]setTranslucent:YES];
        
        
        
        [self presentViewController:nav animated:YES completion:nil];
        
    }
    
    if (indexPath.section == 0 && indexPath.row == 1) {
        
        VCFive42 *vc = [[VCFive42 alloc]init];
        UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc];
        
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
        [[UINavigationBar appearance]setTranslucent:YES];
        
        
        
        [self presentViewController:nav animated:YES completion:nil];
        
    }
    if (indexPath.section == 0 && indexPath.row == 2) {
        
        VCFive43 *vc = [[VCFive43 alloc]init];
        UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc];
        
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
        [[UINavigationBar appearance]setTranslucent:YES];
        
        
        
        [self presentViewController:nav animated:YES completion:nil];
        
    }
    if (indexPath.section == 0&&indexPath.row == 4) {
        
   
            //添加要用到的Label
        
            UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(130,365, 375-260, 30)];
           label.backgroundColor = [UIColor colorWithRed:64/255.0 green:64/255.0 blue:64/255.0 alpha:1];
        label.textColor = [UIColor whiteColor];
        label.textAlignment = NSTextAlignmentCenter;
            label.font = [UIFont systemFontOfSize:15];
            label.text = @"缓存已清除";
        label.layer.cornerRadius = 5;
        label.layer.masksToBounds = YES;
            [self.navigationController.navigationBar addSubview:label];
        
            //设置动画
            CATransition * transion = [CATransition animation];
            transion.type = @"push";//设置动画方式
            transion.subtype = @"fromRight";//设置动画从那个方向开始
            [label.layer addAnimation:transion forKey:nil];//给Label.layer 添加动画
            //设置延时效果
        
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(),^{
                [label removeFromSuperview];  
            });//这句话的意思是1.5秒后，把label移出视图  
        }
    

    
    
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
