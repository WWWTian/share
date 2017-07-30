//
//  VCRoot.m
//  我的share
//
//  Created by 王恬 on 2017/7/26.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCRoot.h"
#import "SignUpViewController.h"

#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFour.h"
#import "VCFive.h"


@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIImageView* imageView1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"kaiji1"]];
    
    imageView1.frame = [UIScreen mainScreen].bounds;
    
    UIImageView* imageView2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"login_logo"]];
    
    imageView2.frame = CGRectMake(135, 90, 110, 110);
    
    UILabel* label1 = [[UILabel alloc]init];
    
    label1.frame = CGRectMake(135, 205, 120, 40);
    
    label1.text = @"SHARE";
    
    label1.font = [UIFont systemFontOfSize:35];
    
    label1.textColor = [UIColor whiteColor];
    
    UITextField* userName = [[UITextField alloc]init];
    
    UITextField* passWord = [[UITextField alloc]init];
    
    userName.frame = CGRectMake(40, 285, 295, 43);
    
    passWord.frame = CGRectMake(40, 340, 295, 43);
    
    userName.borderStyle = UITextBorderStyleRoundedRect;
    
    passWord.borderStyle = UITextBorderStyleRoundedRect;
    
    UIView* leftView1 = [[UIView alloc]init];
    
    UIView* leftView2 = [[UIView alloc]init];
    
    leftView1.frame = CGRectMake(40, 285, 47, 43);
    
    leftView2.frame = CGRectMake(40, 340, 47, 43);
    
    UIImageView* imageView3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_img"]];
   
    UIImageView* imageView5 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"line"]];
    
    UIImageView* imageView4 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"pass_img"]];
    
    UIImageView* imageView6 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"line"]];

    imageView3.frame = CGRectMake(3, 3, 35, 35);
    
    imageView4.frame = CGRectMake(3, 3, 35, 35);
    
    imageView5.frame = CGRectMake(39, 5, 1, 33);
    
    imageView6.frame = CGRectMake(39, 5, 1, 33);
   

    [leftView1 addSubview:imageView3];
    [leftView1 addSubview:imageView5];
    
    [leftView2 addSubview:imageView4];
    [leftView2 addSubview:imageView6];
    
    
    
    userName.leftViewMode = UITextFieldViewModeAlways;
    
    userName.leftView = leftView1;
    
    passWord.leftViewMode = UITextFieldViewModeAlways;
    
    passWord.leftView = leftView2;
    
    
    UIButton* button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    
    
    UIButton* button2 = [UIButton buttonWithType:UIButtonTypeCustom];

   
    button1.frame = CGRectMake(80, 410, 100, 40);
    button2.frame = CGRectMake(200, 410, 100, 40);
   
    [button1 setTitle:@"登陆" forState:UIControlStateNormal];
    [button2 setTitle:@"注册" forState:UIControlStateNormal];
   
   

    [button1.layer setBorderWidth:1.5];
    [button2.layer setBorderWidth:1.5];
    

    
    [button1.layer setBorderColor:[UIColor whiteColor].CGColor] ;
    [button2.layer setBorderColor:[UIColor whiteColor].CGColor];
    
    button1.layer.cornerRadius = 10;
    button1.layer.masksToBounds = YES;
    
    button2.layer.cornerRadius = 10;
    button2.layer.masksToBounds = YES;
    
    [button1 addTarget:self action:@selector(signIn:) forControlEvents:UIControlEventTouchUpInside];
    
    [button2 addTarget:self action:@selector(signUp:) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton* button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button3.frame = CGRectMake(40, 465, 12, 12);
    
    [button3 setImage:[UIImage imageNamed:@"checkbox_unchecked"] forState:UIControlStateNormal];
    [button3 setImage:[UIImage imageNamed:@"checkbox_unchecked"] forState:UIControlStateHighlighted];
    [button3 setImage:[UIImage imageNamed:@"checkbox_checked"] forState:UIControlStateSelected];
    [button3 addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel* label = [[UILabel alloc]init];
    label.text = @"自动登录";
    label.font = [UIFont systemFontOfSize:13];
    label.textColor = [UIColor darkGrayColor];
    label.frame = CGRectMake(57, 463, 100, 15);
    
    
    
    
    [self.view addSubview:imageView1];
    [self.view addSubview:imageView2];
    [self.view addSubview:label1];
    [self.view addSubview:userName];
    [self.view addSubview:passWord];
    [self.view addSubview:button1];
    [self.view addSubview:button2];
    [self.view addSubview:button3];
    [self.view addSubview:label];
    
    
}


- (void) signIn:(UIButton*) btn
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
    
}

- (void) signUp:(UIButton*) btn
{
    SignUpViewController *su = [[SignUpViewController alloc]init];
    [self presentViewController:su animated:YES completion:nil];
    
}

- (void) changeButton:(UIButton*) btn
{

    btn.selected = !btn.selected;

    
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
