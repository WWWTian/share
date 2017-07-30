//
//  VCFive.m
//  我的share
//
//  Created by 王恬 on 2017/7/26.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCFive.h"
#import "VCFive1.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFour.h"
#import "VCFive.h"
#import "VCFive2.h"
#import "VCFive3.h"
#import "VCFive4.h"
#import "VCRoot.h"

@interface VCFive ()

@end

@implementation VCFive

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    titleLabel.font = [UIFont boldSystemFontOfSize:22];
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.text = @"个人信息";
    self.navigationItem.titleView = titleLabel;
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.alpha = 0;
    
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    
    UIBarButtonItem* left = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(press:)];
    self.navigationItem.leftBarButtonItem = left;
    left.tintColor = [UIColor whiteColor];
    

    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, 667-128-20) style:UITableViewStylePlain];
    _tableView.tableHeaderView =[[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 140)];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    
    
    UIImageView* imageView121 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sixin_img1的副本"]];
    imageView121.frame = CGRectMake(35, 20, 100, 100);
    [_tableView.tableHeaderView addSubview:imageView121];
    
    UILabel* label11 = [[UILabel alloc]init];
    label11.text = @"share小白";
    label11.frame = CGRectMake(150, 30, 170, 25);
    label11.font = [UIFont systemFontOfSize:20];
 
    
    UILabel* label22 = [[UILabel alloc]init];
    label22.text =@"数媒/设计爱好者";
    label22.frame = CGRectMake(150, 55, 170, 15);
    label22.font = [UIFont systemFontOfSize:10];
    
    UILabel* label33 = [[UILabel alloc]init];
    label33.text =@"开心了就笑，不开心了就过会儿再笑";
    label33.frame = CGRectMake(150, 75, 230, 20);
    label33.font = [UIFont systemFontOfSize:12];
    
    [_tableView.tableHeaderView addSubview:label11];
    [_tableView.tableHeaderView addSubview:label22];
    [_tableView.tableHeaderView addSubview:label33];
    UIButton* btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn1.frame =CGRectMake(220-5, 98.5, 17, 16);
    UIImage* image1 = [UIImage imageNamed:@"button_zan的副本"];
    [btn1 setImage:image1 forState:UIControlStateNormal];
    btn1.tintColor = [UIColor colorWithRed:118/255.0 green:166/255.0 blue:222/255.0 alpha:1];
    //        [btn1 setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 15)];
    UILabel* label5 = [[UILabel alloc]init];
    label5.frame = CGRectMake(240-5, 100, 25, 15);
    label5.text = @"120";
    label5.font = [UIFont systemFontOfSize:12];
    label5.textColor =[UIColor colorWithRed:118/255.0 green:166/255.0 blue:222/255.0 alpha:1];

    [_tableView.tableHeaderView addSubview:label5];
    [_tableView.tableHeaderView addSubview:btn1];
    
    
    
    UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn2.frame =CGRectMake(260 +20+2,100, 19, 16);
    UIImage* image2 = [UIImage imageNamed:@"button_guanzhu的副本"];
    [btn2 setImage:image2 forState:UIControlStateNormal];
    [btn2 setImageEdgeInsets:UIEdgeInsetsMake(1.5, 0, 1.5, 0)];
    btn2.tintColor = [UIColor colorWithRed:118/255.0 green:166/255.0 blue:222/255.0 alpha:1];
    UILabel* label6= [[UILabel alloc]init];
    label6.frame = CGRectMake(278+20+4+2+2, 100, 25, 14);
    label6.text = @"89";
    label6.font = [UIFont systemFontOfSize:12];
   label6.textColor = [UIColor colorWithRed:118/255.0 green:166/255.0 blue:222/255.0 alpha:1];
    [_tableView.tableHeaderView addSubview:label6];
    [_tableView.tableHeaderView addSubview:btn2];
    
    
    
    UIButton* btn3 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn3.frame =CGRectMake(150, 100, 17, 14);
    UIImage* image3= [UIImage imageNamed:@"img1"];
    btn3.tintColor = [UIColor colorWithRed:118/255.0 green:166/255.0 blue:222/255.0 alpha:1];
    [btn3 setImage:image3 forState:UIControlStateNormal];
    //        [btn1 setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 15)];
    UILabel* label7= [[UILabel alloc]init];
    label7.frame = CGRectMake(170, 100, 25, 15);
    label7.text = @"15";
    label7.font = [UIFont systemFontOfSize:13];
    label7.textColor =  [UIColor colorWithRed:118/255.0 green:166/255.0 blue:222/255.0 alpha:1];;
    [_tableView.tableHeaderView addSubview:label7];
    [_tableView.tableHeaderView addSubview:btn3];
    

    
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
    
    
    
    //    VCFirst *vc = [[VCFirst alloc]init];
    //    UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc];
    //
    //    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
    //    [[UINavigationBar appearance]setTranslucent:YES];
    //
    //
    //
    //    [self presentViewController:nav animated:YES completion:nil];
    //
    //     [self.navigationController popToViewController:vc animated:YES];
    //    VCRoot* vc = [[VCRoot alloc]init];
    //  [self presentViewController:vc animated:YES completion:nil];
    
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
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(75, 16, 80, 20)];
        label1.text = @"我上传的";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img2"]];
        image1.frame = CGRectMake(41, 20, 13, 13);
        [cell addSubview:image1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img3"]];
        image2.frame = CGRectMake(300, 20, 13, 13);
        [cell addSubview:image2];
        
        
    }
    if (indexPath.section == 0&& indexPath.row == 1)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(75, 16, 80, 20)];
        label1.text = @"我的信息";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img4"]];
        image1.frame = CGRectMake(39, 22, 16, 10);
        [cell addSubview:image1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img3"]];
        image2.frame = CGRectMake(300, 20, 13, 13);
        [cell addSubview:image2];
        
        
    }
    if (indexPath.section == 0&& indexPath.row == 2)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(75, 16, 80, 20)];
        label1.text = @"我推荐的";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"button_zan"]];
        image1.frame = CGRectMake(41, 19, 15, 15);
        [cell addSubview:image1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img3"]];
        image2.frame = CGRectMake(300, 20, 13, 13);
        [cell addSubview:image2];
        
        
    }
    if (indexPath.section == 0&& indexPath.row == 3)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(75, 16, 80, 20)];
        label1.text = @"院系通知";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img5"]];
        image1.frame = CGRectMake(41, 19, 16, 13);
        [cell addSubview:image1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img3"]];
        image2.frame = CGRectMake(300, 20, 13, 13);
        [cell addSubview:image2];
        
        
    }
    if (indexPath.section == 0&& indexPath.row == 4)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(75, 16, 80, 20)];
        label1.text = @"设置";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img6"]];
        image1.frame = CGRectMake(41, 19, 16, 16);
        [cell addSubview:image1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img3"]];
        image2.frame = CGRectMake(300, 20, 13, 13);
        [cell addSubview:image2];
        
    }


    if (indexPath.section == 0&& indexPath.row == 5)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(75, 16, 80, 20)];
        label1.text = @"退出";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img7"]];
        image1.frame = CGRectMake(41, 18, 16, 17);
        [cell addSubview:image1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"img3"]];
        image2.frame = CGRectMake(300, 20, 13, 13);
        [cell addSubview:image2];
        
        
    }

    
    
    return cell;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

        [tableView deselectRowAtIndexPath:indexPath animated:NO];
    
    if (indexPath.section == 0 && indexPath.row == 0) {
        
        VCFive1 *vc = [[VCFive1 alloc]init];
        UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc];
        
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
        [[UINavigationBar appearance]setTranslucent:YES];
        
        
        
        [self presentViewController:nav animated:YES completion:nil];
        
    }
    if (indexPath.section == 0&& indexPath.row == 1) {
        VCFive2* vc1 = [[VCFive2 alloc]init];
        UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc1];
        
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
        [[UINavigationBar appearance]setTranslucent:YES];
        
        [self presentViewController:nav animated:YES completion:nil];
    }
    
    if (indexPath.section == 0&& indexPath.row == 2) {
        VCFive3* vc1 = [[VCFive3 alloc]init];
        UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc1];
        
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
        [[UINavigationBar appearance]setTranslucent:YES];
        
        [self presentViewController:nav animated:YES completion:nil];
    }
    
    if (indexPath.section == 0&& indexPath.row == 4) {
        VCFive4* vc1 = [[VCFive4 alloc]init];
        UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc1];
        
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
        [[UINavigationBar appearance]setTranslucent:YES];
        
        [self presentViewController:nav animated:YES completion:nil];
    }
    if (indexPath.section == 0&& indexPath.row == 5) {
        VCRoot* vc1 = [[VCRoot alloc]init];
        UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc1];
        
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
        [[UINavigationBar appearance]setTranslucent:YES];
        
        [self presentViewController:nav animated:YES completion:nil];
    }


}






- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1 ;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 50;

}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 15;
    }
    return 0;
}

//- (CGFloat) tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
//{
//    return 10;
//}



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
