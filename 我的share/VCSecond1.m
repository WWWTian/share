//
//  VCSecond1.m
//  我的share
//
//  Created by 王恬 on 2017/7/28.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCSecond1.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFour.h"
#import "VCFive.h"
#import "VCSecond2.h"

@interface VCSecond1 ()

@end

@implementation VCSecond1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:244/255.0 green:244/255.0 blue:244/255.0 alpha:1];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    titleLabel.font = [UIFont boldSystemFontOfSize:22];
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.text = @"搜索";
    self.navigationItem.titleView = titleLabel;
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.alpha = 0;
    UIBarButtonItem* left = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(press:)];
    self.navigationItem.leftBarButtonItem = left;
    UIBarButtonItem* right = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(press1:)];
    self.navigationItem.rightBarButtonItem = right;


    
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    
    UITableView* tableView= [[UITableView alloc]initWithFrame:CGRectMake(10, 0,355,400) style:UITableViewStylePlain];
    
  
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    


    


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
    tabC.selectedIndex = 1;
    
    [self presentViewController:tabC animated:YES completion:nil];
}

- (void) press1:(UIButton *)btn
{
    VCSecond2 *vc = [[VCSecond2 alloc]init];
    UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
    [[UINavigationBar appearance]setTranslucent:YES];
    
    
    
    [self presentViewController:nav animated:YES completion:nil];
}





- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *string = nil;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:string];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:string];
    }
    
    if (indexPath.section == 0 && indexPath.row == 0) {
        UITextField* searchBar = [[UITextField alloc]init];
        searchBar.frame = CGRectMake(0, 0, 355, 35);
        searchBar.backgroundColor = [UIColor whiteColor];
        searchBar.borderStyle = UITextBorderStyleNone;
        searchBar.text = @"大白";
        searchBar.keyboardType = UIKeyboardTypeNamePhonePad;
        
        UIView* leftView = [[UIView alloc]init];
        leftView.frame = CGRectMake(0, 0, 35, 35);
        
        
        UIButton* btn01 = [UIButton buttonWithType:UIButtonTypeCustom];
        btn01.frame = CGRectMake(10, 9, 17, 17);
        [btn01 setImage:[UIImage imageNamed:@"搜索"] forState:UIControlStateNormal];
        [leftView addSubview:btn01];
        
        searchBar.leftViewMode = UITextFieldViewModeAlways;
        searchBar.leftView = leftView;
        [cell  addSubview:searchBar];
        

        
    }
    if (indexPath.section == 1 && indexPath.row == 0)
    {
        UIImageView* imageView1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"list_img2的副本"]];
        imageView1.frame = CGRectMake(0, 0, 175, 130);
        [cell addSubview:imageView1];
        UILabel* label1 = [[UILabel alloc]init];
        label1.text = @"Icon of Baymax";
        label1.textColor = [UIColor blackColor];
        label1.font = [UIFont systemFontOfSize:15];
        label1.frame = CGRectMake(195, 20, 150, 10);
        [cell addSubview:label1];
        
        UILabel* label2 = [[UILabel alloc]init];
        label2.text = @"原创-UI-icon";
        label2.textColor = [UIColor blackColor];
        label2.font = [UIFont systemFontOfSize:12];
        label2.frame = CGRectMake(195, 55, 150, 10);
        [cell addSubview:label2];
        
        UILabel* label3 = [[UILabel alloc]init];
        label3.text = @"15分钟前";
        label3.textColor = [UIColor blackColor];
        label3.font = [UIFont systemFontOfSize:12];
        label3.frame = CGRectMake(195, 73, 100, 10);
        [cell addSubview:label3];
        
        UILabel* label4 = [[UILabel alloc]init];
        label4.text = @"share小白";
        label4.textColor = [UIColor blackColor];
        label4.font = [UIFont systemFontOfSize:13];
        label4.frame = CGRectMake(195, 35, 70, 20);
        [cell addSubview:label4];
        
        UIButton* btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
        btn1.frame =CGRectMake(195, 100, 15, 16);
        UIImage* image1 = [UIImage imageNamed:@"button_zan的副本"];
        [btn1 setImage:image1 forState:UIControlStateNormal];
        //        [btn1 setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 15)];
        UILabel* label5 = [[UILabel alloc]init];
        label5.frame = CGRectMake(195+16+2, 100, 25, 15);
        label5.text = @"102";
        label5.font = [UIFont systemFontOfSize:12];
        label5.textColor = [UIColor blueColor];
        [cell addSubview:label5];
        [cell addSubview:btn1];
        
        
        
        UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
        btn2.frame =CGRectMake(245, 102, 20, 13-1);
        UIImage* image2 = [UIImage imageNamed:@"button_guanzhu的副本"];
        [btn2 setImage:image2 forState:UIControlStateNormal];
        [btn1 setImageEdgeInsets:UIEdgeInsetsMake(1.5, 0, 1.5, 0)];
        UILabel* label6= [[UILabel alloc]init];
        label6.frame = CGRectMake(195+16+2+30+18+5, 100, 25, 14);
        label6.text = @"26";
        label6.font = [UIFont systemFontOfSize:12];
        label6.textColor = [UIColor blueColor];
        [cell addSubview:label6];
        [cell addSubview:btn2];
        
        
        
        UIButton* btn3 = [UIButton buttonWithType:UIButtonTypeSystem];
        btn3.frame =CGRectMake(243+50+2, 100, 14, 14);
        UIImage* image3= [UIImage imageNamed:@"button_share的副本"];
        [btn3 setImage:image3 forState:UIControlStateNormal];
        //        [btn1 setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 15)];
        UILabel* label7= [[UILabel alloc]init];
        label7.frame = CGRectMake(243+50+15+4, 100, 25, 15);
        label7.text = @"20";
        label7.font = [UIFont systemFontOfSize:12];
        label7.textColor = [UIColor blueColor];
        [cell addSubview:label7];
        [cell addSubview:btn3];
        
        
    }
    if (indexPath.section == 2 && indexPath.row == 0)
    {
        UIImageView* imageView1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"list_img2的副本"]];
        imageView1.frame = CGRectMake(0, 0, 175, 130);
        [cell addSubview:imageView1];
        UILabel* label1 = [[UILabel alloc]init];
        label1.text = @"每个人都需要一个大白";
        label1.textColor = [UIColor blackColor];
        label1.font = [UIFont systemFontOfSize:15];
        label1.frame = CGRectMake(195, 20, 160, 10);
        [cell addSubview:label1];
        
        UILabel* label2 = [[UILabel alloc]init];
        label2.text = @"原创作品-摄影";
        label2.textColor = [UIColor blackColor];
        label2.font = [UIFont systemFontOfSize:12];
        label2.frame = CGRectMake(195, 55, 150, 10);
        [cell addSubview:label2];
        
        UILabel* label3 = [[UILabel alloc]init];
        label3.text = @"一个月前";
        label3.textColor = [UIColor blackColor];
        label3.font = [UIFont systemFontOfSize:12];
        label3.frame = CGRectMake(195, 73, 100, 10);
        [cell addSubview:label3];
        
        UILabel* label4 = [[UILabel alloc]init];
        label4.text = @"share小王";
        label4.textColor = [UIColor blackColor];
        label4.font = [UIFont systemFontOfSize:13];
        label4.frame = CGRectMake(195, 35, 70, 20);
        [cell addSubview:label4];
        
        UIButton* btn1 = [UIButton buttonWithType:UIButtonTypeSystem];
        btn1.frame =CGRectMake(195, 100, 15, 16);
        UIImage* image1 = [UIImage imageNamed:@"button_zan的副本"];
        [btn1 setImage:image1 forState:UIControlStateNormal];
        //        [btn1 setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 15)];
        UILabel* label5 = [[UILabel alloc]init];
        label5.frame = CGRectMake(195+16+2, 100, 25, 15);
        label5.text = @"102";
        label5.font = [UIFont systemFontOfSize:12];
        label5.textColor = [UIColor blueColor];
        [cell addSubview:label5];
        [cell addSubview:btn1];
        
        
        
        UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
        btn2.frame =CGRectMake(245, 102, 20, 13-1);
        UIImage* image2 = [UIImage imageNamed:@"button_guanzhu的副本"];
        [btn2 setImage:image2 forState:UIControlStateNormal];
        [btn1 setImageEdgeInsets:UIEdgeInsetsMake(1.5, 0, 1.5, 0)];
        UILabel* label6= [[UILabel alloc]init];
        label6.frame = CGRectMake(195+16+2+30+18+5, 100, 25, 14);
        label6.text = @"26";
        label6.font = [UIFont systemFontOfSize:12];
        label6.textColor = [UIColor blueColor];
        [cell addSubview:label6];
        [cell addSubview:btn2];
        
        
        
        UIButton* btn3 = [UIButton buttonWithType:UIButtonTypeSystem];
        btn3.frame =CGRectMake(243+50+2, 100, 14, 14);
        UIImage* image3= [UIImage imageNamed:@"button_share的副本"];
        [btn3 setImage:image3 forState:UIControlStateNormal];
        //        [btn1 setImageEdgeInsets:UIEdgeInsetsMake(0, 0, 0, 15)];
        UILabel* label7= [[UILabel alloc]init];
        label7.frame = CGRectMake(243+50+15+4, 100, 25, 15);
        label7.text = @"20";
        label7.font = [UIFont systemFontOfSize:12];
        label7.textColor = [UIColor blueColor];
        [cell addSubview:label7];
        [cell addSubview:btn3];
        
        
    }




    
    
    
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 35;
    }
    else
    {
    return 130;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 1) {
        return 10;
    }
    else
    {
    return 15;
    }
}

//- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
//{
//    if (section == 2) {
//        return 500;
//    }
//    else
//    {
//        return  0;
//    }
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
