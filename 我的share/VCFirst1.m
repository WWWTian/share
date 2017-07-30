//
//  VCFirst1.m
//  我的share
//
//  Created by 王恬 on 2017/7/27.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCFirst1.h"
#import "VCRoot.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFour.h"
#import "VCFive.h"

@interface VCFirst1 ()

@end

@implementation VCFirst1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 375, 667) style:UITableViewStylePlain];
    _tableView.tableHeaderView =[[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 80)];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    UIBarButtonItem* left = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(press:)];
    self.navigationItem.leftBarButtonItem = left;
    
    

   
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    titleLabel.font = [UIFont boldSystemFontOfSize:22];
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.text = @"SHARE";
    self.navigationItem.titleView = titleLabel;
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.alpha = 0;
    
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    
    UIImage* image = [UIImage imageNamed:@"sixin_img1的副本.png"];
    UIImageView* image1 = [[UIImageView alloc]initWithImage:image];
    image1.frame = CGRectMake(15, 20, 50, 50);
    [self.tableView.tableHeaderView addSubview:image1];
    
    UIImage* image122 = [UIImage imageNamed:@"1"];
    UIImageView* imageV = [[UIImageView alloc]initWithImage:image122];
    imageV.frame = CGRectMake(0, 150-64, 375, 1.5);
    [self.tableView.tableHeaderView addSubview:imageV];
    
    UILabel* label1 = [[UILabel alloc]init];
    label1.text = @"假日";
    label1.textColor = [UIColor blackColor];
    label1.font = [UIFont systemFontOfSize:22];
    label1.frame = CGRectMake(80, 10, 100, 40);
    [self.tableView.tableHeaderView addSubview:label1];
    
    
    UILabel* label2 = [[UILabel alloc]init];
    label2.text = @"share小白";
    label2.textColor = [UIColor blackColor];
    label2.font = [UIFont systemFontOfSize:16];
    label2.frame = CGRectMake(80, 43, 100, 40);
    [self.tableView.tableHeaderView addSubview:label2];
    
    UILabel* label3 = [[UILabel alloc]init];
    label3.text = @"15分钟前";
    label3.textColor = [UIColor blackColor];
    label3.font = [UIFont systemFontOfSize:10];
    label3.frame = CGRectMake(320, 20, 50, 10);
    [self.tableView.tableHeaderView addSubview:label3];
    
    UIButton* btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn1.frame =CGRectMake(195+30, 120-64, 15, 16);
    UIImage* image11 = [UIImage imageNamed:@"button_zan的副本"];
    [btn1 setImage:image11 forState:UIControlStateNormal];
    //        [btn1 setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 15)];
    UILabel* label5 = [[UILabel alloc]init];
    label5.frame = CGRectMake(195+16+32, 120-64, 25, 15);
    label5.text = @"102";
    label5.font = [UIFont systemFontOfSize:12];
    label5.textColor = [UIColor blueColor];
    [self.tableView.tableHeaderView addSubview:label5];
    [self.tableView.tableHeaderView addSubview:btn1];
    
    
    
    UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn2.frame =CGRectMake(275, 122-64, 20, 13-1);
    UIImage* image2 = [UIImage imageNamed:@"button_guanzhu的副本"];
    [btn2 setImage:image2 forState:UIControlStateNormal];
    [btn1 setImageEdgeInsets:UIEdgeInsetsMake(1.5, 0, 1.5, 0)];
    UILabel* label6= [[UILabel alloc]init];
    label6.frame = CGRectMake(195+16+2+30+18+5+30, 100+20-64, 25, 14);
    label6.text = @"26";
    label6.font = [UIFont systemFontOfSize:12];
    label6.textColor = [UIColor blueColor];
    [self.tableView.tableHeaderView addSubview:label6];
    [self.tableView.tableHeaderView addSubview:btn2];
    
    
    
    UIButton* btn3 = [UIButton buttonWithType:UIButtonTypeSystem];
    btn3.frame =CGRectMake(243+50+32, 120-64, 14, 14);
    UIImage* image3= [UIImage imageNamed:@"button_share的副本"];
    [btn3 setImage:image3 forState:UIControlStateNormal];
    //        [btn1 setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 15)];
    UILabel* label7= [[UILabel alloc]init];
    label7.frame = CGRectMake(243+50+15+34, 120-64, 25, 15);
    label7.text = @"20";
    label7.font = [UIFont systemFontOfSize:12];
    label7.textColor = [UIColor blueColor];
    [self.tableView.tableHeaderView addSubview:label7];
    [self.tableView.tableHeaderView addSubview:btn3];
 
   
    
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
    if (indexPath.section == 0 && indexPath.row == 0)
    {
        
        UILabel* label0 = [[UILabel alloc]init];
        label0.text = @"多希望列车能把我带到有你的城市。";
        label0.textColor = [UIColor blackColor];
        label0.font = [UIFont systemFontOfSize:13];
        label0.frame = CGRectMake(15, 25, 330, 10);
        [cell addSubview:label0];
        
        UIImage* image9 = [UIImage imageNamed:@"works_img1的副本"];
        UIImageView* imageV9 = [[UIImageView alloc]initWithImage:image9];
        imageV9.frame = CGRectMake(15, 40, 375-30, 210);
        [cell addSubview:imageV9];
        
        UIImage* image8 = [UIImage imageNamed:@"works_img2的副本"];
        UIImageView* imageV8 = [[UIImageView alloc]initWithImage:image8];
        imageV8.frame = CGRectMake(15, 40+220, 375-30, 210);
        [cell addSubview:imageV8];
        
        
        UIImage* image71 = [UIImage imageNamed:@"works_img3的副本"];
        UIImageView* imageV71 = [[UIImageView alloc]initWithImage:image71];
        imageV71.frame = CGRectMake(70, 260+ 220, 375-140, 325);
        [cell addSubview:imageV71];
        
        UIImage* image72 = [UIImage imageNamed:@"works_img5的副本"];
        UIImageView* imageV72 = [[UIImageView alloc]initWithImage:image72];
        imageV72.frame = CGRectMake(70, 480+ 335, 375-140, 325);
        [cell addSubview:imageV72];
        
    }
    
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1 ;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 1200;
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
