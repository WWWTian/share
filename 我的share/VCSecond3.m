//
//  VCSecond3.m
//  我的share
//
//  Created by 王恬 on 2017/7/28.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCSecond3.h"
#import "VCFirst.h"
#import "VCSecond2.h"
#import "VCThird.h"
#import "VCFour.h"
#import "VCFive.h"


@interface VCSecond3 ()

@end

@implementation VCSecond3

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem* left = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(press:)];
    left.tintColor = [UIColor whiteColor];

    UIBarButtonItem* right = [[UIBarButtonItem alloc]initWithTitle:@"上传" style:UIBarButtonItemStylePlain target:self action:@selector(press1:)];
    right.tintColor = [UIColor whiteColor];

    
//    UIBarButtonItem* right = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(press1:)];
//    self.navigationItem.rightBarButtonItem = right;
//    right.tintColor = [UIColor whiteColor];
    
    
    
    self.navigationItem.rightBarButtonItem =right;
    self.navigationItem.leftBarButtonItem = left;
    
    UILabel* label = [[UILabel alloc]init];
    label.text = @"选择图片";
    label.font = [UIFont systemFontOfSize:17];
    [label setTextColor:[UIColor whiteColor]];
    label.frame = CGRectMake(49, 12, 100, 20);
    [self.navigationController.navigationBar addSubview:label];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

- (void)press1:(UIButton*)btn
{
    
    
}
- (void)press:(UIButton*)btn
{
    VCFirst* one = [[VCFirst alloc]init];
    UINavigationController* nav1 = [[UINavigationController alloc]initWithRootViewController:one];
    nav1.tabBarItem.image = [[UIImage imageNamed:@"radio_button1_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav1.tabBarItem.selectedImage = [[UIImage imageNamed:@"radio_button1_pressed"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    VCSecond2* two = [[VCSecond2 alloc]init];
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
