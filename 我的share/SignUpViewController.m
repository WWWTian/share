//
//  SignUpViewController.m
//  我的share
//
//  Created by 王恬 on 2017/7/26.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "SignUpViewController.h"
#import "VCRoot.h"

@interface SignUpViewController ()

@end

@implementation SignUpViewController

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
    
    UITextField* emailBox = [[UITextField alloc]init];
    
    UITextField* userName = [[UITextField alloc]init];
    
    UITextField* passWord = [[UITextField alloc]init];
    
    emailBox.frame = CGRectMake(40, 285, 295, 43);
    
    userName.frame = CGRectMake(40, 340, 295, 43);
    
    passWord.frame = CGRectMake(40, 395, 295, 43);
    
    emailBox.borderStyle = UITextBorderStyleRoundedRect;
    
    userName.borderStyle = UITextBorderStyleRoundedRect;
    
    passWord.borderStyle = UITextBorderStyleRoundedRect;
    
    UIView* leftview3 = [[UIView alloc]init];
    
    UIView* leftView1 = [[UIView alloc]init];
    
    UIView* leftView2 = [[UIView alloc]init];
    
    leftview3.frame = CGRectMake(40, 270, 47, 43);
    
    leftView1.frame = CGRectMake(40, 318, 47, 43);
    
    leftView2.frame = CGRectMake(40, 366, 47, 43);
    
    UIImageView* imageView7 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"email_img"]];
    
    UIImageView* imagrView8 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"line"]];
    
    UIImageView* imageView3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"user_img"]];
    
    UIImageView* imageView5 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"line"]];
    
    UIImageView* imageView4 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"pass_img"]];
    
    UIImageView* imageView6 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"line"]];
    
    imageView7.frame = CGRectMake(3, 3, 35, 35);
    
    imageView3.frame = CGRectMake(3, 3, 35, 35);
    
    imageView4.frame = CGRectMake(3, 3, 35, 35);
    
    imageView5.frame = CGRectMake(39, 5, 1, 33);
    
    imageView6.frame = CGRectMake(39, 5, 1, 33);
    
    imagrView8.frame = CGRectMake(39, 5, 1, 33);
    
    
    [leftview3 addSubview:imageView7];
    [leftview3 addSubview:imagrView8];
    
    [leftView1 addSubview:imageView3];
    [leftView1 addSubview:imageView5];
    
    [leftView2 addSubview:imageView4];
    [leftView2 addSubview:imageView6];
    
    
    
    userName.leftViewMode = UITextFieldViewModeAlways;
    
    userName.leftView = leftView1;
    
    passWord.leftViewMode = UITextFieldViewModeAlways;
    
    passWord.leftView = leftView2;
    
    emailBox.leftViewMode = UITextFieldViewModeAlways;
    
    emailBox.leftView = leftview3;
    
    UIButton* button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button1.frame = CGRectMake(120, 480, 150, 40);
    
    [button1 setTitle:@"开始注册" forState:UIControlStateNormal];
    
    [button1.layer setBorderWidth:1.5];
    
    [button1.layer setBorderColor:[UIColor whiteColor].CGColor] ;

    button1.layer.cornerRadius = 10;
    button1.layer.masksToBounds = YES;
    [button1 addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchDown];

    [self.view addSubview:imageView1];
    [self.view addSubview:imageView2];
    [self.view addSubview:label1];
    [self.view addSubview:userName];
    [self.view addSubview:passWord];
    [self.view addSubview:emailBox];
    [self.view addSubview:button1];
    
    
}

- (void) press:(UIButton*) btn
{
    VCRoot* vc = [[VCRoot alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
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
