//
//  VCSecond.m
//  我的share
//
//  Created by 王恬 on 2017/7/26.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCSecond.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFour.h"
#import "VCFive.h"
#import "VCSecond1.h"
#import "VCSecond2.h"

@interface VCSecond ()

@end

@implementation VCSecond

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
    UIBarButtonItem* left = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(press1:)];
    self.navigationItem.leftBarButtonItem = left;
    UIBarButtonItem* right = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(press2:)];
    self.navigationItem.rightBarButtonItem = right;
    

    
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    
    searchBar = [[UITextField alloc]init];
    searchBar.frame = CGRectMake(10, 80, 355, 35);
    searchBar.backgroundColor = [UIColor whiteColor];
    searchBar.borderStyle = UITextBorderStyleNone;
    searchBar.placeholder = @"搜索 用户名 作品分类 文章";
    searchBar.keyboardType = UIKeyboardTypeNamePhonePad;
    
    UIView* leftView = [[UIView alloc]init];
    leftView.frame = CGRectMake(0, 0, 35, 35);
  
//    UIImage* image =[UIImage imageNamed:@"搜索"];
//    UIImageView* left = [[UIImageView alloc]initWithImage:image];
//    left.frame = CGRectMake(10, 9, 17, 17);
//
//    UIImage* image1 = [UIImage imageNamed:@"2"];
//    UIImageView* left1 = [[UIImageView alloc]initWithImage:image1];
//    left1.frame = CGRectMake(0, 0, 12, 0);
//    
//    UIImage* image2 = [UIImage imageNamed:@"2"];
//    UIImageView* left2 = [[UIImageView alloc]initWithImage:image2];
//    left2.frame = CGRectMake( 29, 0, 12, 0);
    
//    [leftView addSubview:left1];
//    [leftView addSubview:left2];
//   [leftView addSubview: left];
    
    
    UIButton* btn01 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn01.frame = CGRectMake(10, 9, 17, 17);
    [btn01 setImage:[UIImage imageNamed:@"搜索"] forState:UIControlStateNormal];
    [leftView addSubview:btn01];
    
    [btn01 addTarget:self action:@selector(pressSou:) forControlEvents:UIControlEventTouchUpInside];
    
    searchBar.leftViewMode = UITextFieldViewModeAlways;
    searchBar.leftView = leftView;
    [self.view addSubview:searchBar];
 
    UIButton* btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn1.frame =CGRectMake(10, 130, 70, 22);
    [btn1 setTitle:@"分类" forState:UIControlStateNormal];
    [btn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn1 setImage:[UIImage imageNamed:@"search_button的副本"] forState:UIControlStateNormal];
    btn1.titleLabel.font = [UIFont systemFontOfSize:16];
    [btn1 setTitleEdgeInsets:UIEdgeInsetsMake(1, -24, 1, 10)];
    [btn1 setImageEdgeInsets:UIEdgeInsetsMake(2.5, 8, 2.5, 45)];
    btn1.backgroundColor = [UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:1];
    btn1.tintColor = [UIColor whiteColor];

    [self.view addSubview:btn1];
    UIImageView* imagebtn1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"3"]];
                              
    imagebtn1.frame = CGRectMake(10, 152, 355, 2);
    [self.view addSubview:imagebtn1];
    
    UIButton* btn22 = [[UIButton alloc]init];
    btn22.frame = CGRectMake(10, 164, 325/4, 30);
    [btn22 setTitle:@"平面设计" forState:UIControlStateNormal];
    btn22.titleLabel.font = [UIFont systemFontOfSize:15];
    btn22.backgroundColor = [UIColor whiteColor];
    [btn22 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn22.layer.cornerRadius = 4;
    btn22.layer.masksToBounds = YES;
     [btn22 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn22];
    
    
    UIButton* btn23 = [[UIButton alloc]init];
    btn23.frame = CGRectMake(10+325/4+10, 164, 325/4, 30);
    [btn23 setTitle:@"网页设计" forState:UIControlStateNormal];
    btn23.titleLabel.font = [UIFont systemFontOfSize:15];
    btn23.backgroundColor = [UIColor whiteColor];
    [btn23 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn23.layer.cornerRadius = 4;
    btn23.layer.masksToBounds = YES;
     [btn23 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];

    [self.view addSubview:btn23];
    
    UIButton* btn24 = [[UIButton alloc]init];
    btn24.frame = CGRectMake(10+325/4+10+325/4+10, 164, 325/4, 30);
    [btn24 setTitle:@"UI/icon" forState:UIControlStateNormal];
    btn24.titleLabel.font = [UIFont systemFontOfSize:15];
    btn24.backgroundColor = [UIColor whiteColor];
    [btn24 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn24.layer.cornerRadius = 4;
    btn24.layer.masksToBounds = YES;
     [btn24 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];

    [self.view addSubview:btn24];
    
    UIButton* btn25= [[UIButton alloc]init];
    btn25.frame = CGRectMake(10+325/4+10+325/4+10+325/4+10, 164, 325/4, 30);
    [btn25 setTitle:@"插画/手绘" forState:UIControlStateNormal];
    btn25.titleLabel.font = [UIFont systemFontOfSize:15];
    btn25.backgroundColor = [UIColor whiteColor];
    [btn25 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn25.layer.cornerRadius = 4;
    btn25.layer.masksToBounds = YES;
     [btn25 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];

    [self.view addSubview:btn25];
    
    UIButton* btn26 = [[UIButton alloc]init];
    btn26.frame = CGRectMake(10, 204, 325/4+15, 30);
    [btn26 setTitle:@"虚拟与设计" forState:UIControlStateNormal];
    btn26.titleLabel.font = [UIFont systemFontOfSize:15];
    btn26.backgroundColor = [UIColor whiteColor];
    [btn26 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn26.layer.cornerRadius = 4;
    btn26.layer.masksToBounds = YES;
     [btn26 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];

    [self.view addSubview:btn26];

    UIButton* btn27 = [[UIButton alloc]init];
    btn27.frame = CGRectMake(10+325/4+15+10, 204, 325/4-7, 30);
    [btn27 setTitle:@"影视" forState:UIControlStateNormal];
    btn27.titleLabel.font = [UIFont systemFontOfSize:15];
    btn27.backgroundColor = [UIColor whiteColor];
    [btn27 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn27.layer.cornerRadius = 4;
    btn27.layer.masksToBounds = YES;
     [btn27 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];

    [self.view addSubview:btn27];
    
    UIButton* btn28 = [[UIButton alloc]init];
    btn28.frame = CGRectMake(10+325/4+15+10+325/4-5+10-2, 204, 325/4-10+2, 30);
    [btn28 setTitle:@"摄影" forState:UIControlStateNormal];
    btn28.titleLabel.font = [UIFont systemFontOfSize:15];
    btn28.backgroundColor = [UIColor whiteColor];
    [btn28 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn28.layer.cornerRadius = 4;
    btn28.layer.masksToBounds = YES;
     [btn28 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];

    [self.view addSubview:btn28];
    
    UIButton* btn29 = [[UIButton alloc]init];
    btn29.frame = CGRectMake(10+325/4+10+325/4+10+325/4+10, 204, 325/4, 30);
    [btn29 setTitle:@"其他" forState:UIControlStateNormal];
    btn29.titleLabel.font = [UIFont systemFontOfSize:15];
    btn29.backgroundColor = [UIColor whiteColor];
    [btn29 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn29.layer.cornerRadius = 4;
    btn29.layer.masksToBounds = YES;
     [btn29 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];

    [self.view addSubview:btn29];
    
    UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.frame =CGRectMake(10, 254, 70, 22);
    [btn2 setTitle:@"推荐" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn2 setImage:[UIImage imageNamed:@"search_button的副本"] forState:UIControlStateNormal];
    btn2.titleLabel.font = [UIFont systemFontOfSize:16];
    [btn2 setTitleEdgeInsets:UIEdgeInsetsMake(1, -24, 1, 10)];
    [btn2 setImageEdgeInsets:UIEdgeInsetsMake(2.5, 8, 2.5, 45)];
    btn2.backgroundColor = [UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:1];
    btn2.tintColor = [UIColor whiteColor];
    
    [self.view addSubview:btn2];
    UIImageView* imagebtn2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"3"]];
    
    imagebtn2.frame = CGRectMake(10, 276, 355, 2);
    [self.view addSubview:imagebtn2];


    UIButton* btn32 = [[UIButton alloc]init];
    btn32.frame = CGRectMake(10, 288, 325/4, 30);
    [btn32 setTitle:@"人气最高" forState:UIControlStateNormal];
    btn32.titleLabel.font = [UIFont systemFontOfSize:15];
    btn32.backgroundColor = [UIColor whiteColor];
    [btn32 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn32.layer.cornerRadius = 4;
    btn32.layer.masksToBounds = YES;
     [btn32 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn32];
    
    
    UIButton* btn33 = [[UIButton alloc]init];
    btn33.frame = CGRectMake(10+325/4+10, 288, 325/4, 30);
    [btn33 setTitle:@"收藏最多" forState:UIControlStateNormal];
    btn33.titleLabel.font = [UIFont systemFontOfSize:15];
    btn33.backgroundColor = [UIColor whiteColor];
    [btn33 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn33.layer.cornerRadius = 4;
    btn33.layer.masksToBounds = YES;
     [btn33 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn33];
    
    UIButton* btn34 = [[UIButton alloc]init];
    btn34.frame = CGRectMake(10+325/4+10+325/4+10, 288, 325/4, 30);
    [btn34 setTitle:@"评论最多" forState:UIControlStateNormal];
    btn34.titleLabel.font = [UIFont systemFontOfSize:15];
    btn34.backgroundColor = [UIColor whiteColor];
    [btn34 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn34.layer.cornerRadius = 4;
    btn34.layer.masksToBounds = YES;
     [btn34 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn34];
    
    UIButton* btn35= [[UIButton alloc]init];
    btn35.frame = CGRectMake(10+325/4+10+325/4+10+325/4+10, 288, 325/4, 30);
    [btn35 setTitle:@"编辑精选" forState:UIControlStateNormal];
    btn35.titleLabel.font = [UIFont systemFontOfSize:15];
    btn35.backgroundColor = [UIColor whiteColor];
    [btn35 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn35.layer.cornerRadius = 4;
    btn35.layer.masksToBounds = YES;
     [btn35 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn35];

    UIButton* btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.frame =CGRectMake(10, 338, 70, 22);
    [btn3 setTitle:@"时间" forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn3 setImage:[UIImage imageNamed:@"search_button的副本"] forState:UIControlStateNormal];
    btn3.titleLabel.font = [UIFont systemFontOfSize:16];
    [btn3 setTitleEdgeInsets:UIEdgeInsetsMake(1, -24, 1, 10)];
    [btn3 setImageEdgeInsets:UIEdgeInsetsMake(2.5, 8, 2.5, 45)];
    btn3.backgroundColor = [UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:1];
    btn3.tintColor = [UIColor whiteColor];
    
    [self.view addSubview:btn3];
    UIImageView* imagebtn3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"3"]];
    
    imagebtn3.frame = CGRectMake(10, 360, 355, 2);
    [self.view addSubview:imagebtn3];
    
    
    btn42 = [[UIButton alloc]init];
    btn42.frame = CGRectMake(10, 372, 325/4, 30);
    [btn42 setTitle:@"30分钟前" forState:UIControlStateNormal];
    btn42.titleLabel.font = [UIFont systemFontOfSize:15];
    btn42.backgroundColor = [UIColor whiteColor];
    [btn42 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn42.layer.cornerRadius = 4;
    btn42.layer.masksToBounds = YES;
    [btn42 addTarget:self action:@selector(pressBtn1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn42];
    
    
    btn43 = [[UIButton alloc]init];
    btn43.frame = CGRectMake(10+325/4+10, 372, 325/4, 30);
    [btn43 setTitle:@"1小时前" forState:UIControlStateNormal];
    btn43.titleLabel.font = [UIFont systemFontOfSize:15];
    btn43.backgroundColor = [UIColor whiteColor];
    [btn43 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn43.layer.cornerRadius = 4;
    btn43.layer.masksToBounds = YES;
    [btn43 addTarget:self action:@selector(pressBtn2:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn43];
    
    btn44 = [[UIButton alloc]init];
    btn44.frame = CGRectMake(10+325/4+10+325/4+10, 372, 325/4, 30);
    [btn44 setTitle:@"1月前" forState:UIControlStateNormal];
    btn44.titleLabel.font = [UIFont systemFontOfSize:15];
    btn44.backgroundColor = [UIColor whiteColor];
    [btn44 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn44.layer.cornerRadius = 4;
    btn44.layer.masksToBounds = YES;
    [btn44 addTarget:self action:@selector(pressBtn3:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn44];
    
//    UIButton* btn45= [UIButton buttonWithType:UIButtonTypeCustom];
//    btn45.frame = CGRectMake(10+325/4+10+325/4+10+325/4+10, 372, 325/4, 30);
//        btn45.titleLabel.font = [UIFont systemFontOfSize:15];
//    btn45.backgroundColor = [UIColor whiteColor];
//    [btn45 setImage:[UIImage imageNamed:@"5"] forState:UIControlStateNormal];
//    [btn45 setTitle:@"1年前" forState:UIControlStateNormal];
//    [btn45 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    
//    [btn45 setImage:[UIImage imageNamed:@"3"] forState:UIControlStateSelected];
//    [btn45 setTitle:@"1年前" forState:UIControlStateSelected];
// 
//    [btn45 setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
//   
//
//
//
//    
//    btn45.layer.cornerRadius = 4;
//    btn45.layer.masksToBounds = YES;
//    [btn45 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
//   
//    [self.view addSubview:btn45];
   
    btn45 = [[UIButton alloc]init];
    btn45.frame = CGRectMake(10+325/4+10+325/4+10+325/4+10, 372, 325/4, 30);
    [btn45 setTitle:@"1年前" forState:UIControlStateNormal];
    btn45.titleLabel.font = [UIFont systemFontOfSize:15];
    btn45.backgroundColor = [UIColor whiteColor];
    [btn45 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn45.layer.cornerRadius = 4;
    btn45.layer.masksToBounds = YES;
    [btn45 addTarget:self action:@selector(pressBtn4:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn45];

    
}

- (void) pressBtn1:(UIButton *)btn
{
    if ([btn.backgroundColor isEqual:[UIColor whiteColor]])
    
        {
            btn.backgroundColor = [[UIColor alloc] initWithRed:0.0 green:0.4 blue:0.7 alpha:0.7];
            [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
   
        btn43.backgroundColor = [UIColor whiteColor];
        [btn43 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn44.backgroundColor = [UIColor whiteColor];
        [btn44 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn45.backgroundColor = [UIColor whiteColor];
        [btn45 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    }
}
- (void) pressBtn2:(UIButton *)btn
{
    if ([btn.backgroundColor isEqual:[UIColor whiteColor]])
        
    {
        btn.backgroundColor = [[UIColor alloc] initWithRed:0.0 green:0.4 blue:0.7 alpha:0.7];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
        btn42.backgroundColor = [UIColor whiteColor];
        [btn42 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn44.backgroundColor = [UIColor whiteColor];
        [btn44 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn45.backgroundColor = [UIColor whiteColor];
        [btn45 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
    }
}

- (void) pressBtn3:(UIButton *)btn
{
    if ([btn.backgroundColor isEqual:[UIColor whiteColor]])
        
    {
        btn.backgroundColor = [[UIColor alloc] initWithRed:0.0 green:0.4 blue:0.7 alpha:0.7];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
        btn43.backgroundColor = [UIColor whiteColor];
        [btn43 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn42.backgroundColor = [UIColor whiteColor];
        [btn42 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn45.backgroundColor = [UIColor whiteColor];
        [btn45 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
    }
}

- (void) pressBtn4:(UIButton *)btn
{
    if ([btn.backgroundColor isEqual:[UIColor whiteColor]])
        
    {
        btn.backgroundColor = [[UIColor alloc] initWithRed:0.0 green:0.4 blue:0.7 alpha:0.7];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
        btn43.backgroundColor = [UIColor whiteColor];
        [btn43 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn44.backgroundColor = [UIColor whiteColor];
        [btn44 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn42.backgroundColor = [UIColor whiteColor];
        [btn42 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
    }
}




- (void) pressBtn:(UIButton *) btn
{
    if([btn.backgroundColor isEqual:[UIColor whiteColor]]){
        btn.backgroundColor = [[UIColor alloc] initWithRed:0.0 green:0.4 blue:0.7 alpha:0.7];
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        
    }else{
        btn.backgroundColor = [UIColor whiteColor];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

        
    }
}

    

- (void)press1:(UIButton*)btn
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

- (void)press2:(UIButton*)btn
{
    VCSecond2 *vc = [[VCSecond2 alloc]init];
    UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
    [[UINavigationBar appearance]setTranslucent:YES];
    
    
    
    [self presentViewController:nav animated:YES completion:nil];
    
}

- (void)pressSou:(UIButton*) btn
{
    NSString* str = @"db";
    NSString* str1 = searchBar.text;
    
    if( [str isEqualToString:str1] ){
        VCFirst* one = [[VCFirst alloc]init];
        UINavigationController* nav1 = [[UINavigationController alloc]initWithRootViewController:one];
        nav1.tabBarItem.image = [[UIImage imageNamed:@"radio_button1_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        nav1.tabBarItem.selectedImage = [[UIImage imageNamed:@"radio_button1_pressed"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        VCSecond1* two = [[VCSecond1 alloc]init];
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
    
}

//- (void) button:(UIButton*) sender
//{
//    UIButton * _tmpBtn = [[UIButton alloc]init];
//   
//        
//        if (_tmpBtn == nil){
//            sender.selected = YES;
//            _tmpBtn = sender;
//            if(sender.selected == YES){
//                sender.backgroundColor = [[UIColor alloc] initWithRed:0.0 green:0.4 blue:0.7 alpha:0.7];
//                [sender setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//                
//            }else if(sender.selected == NO){
//                sender.backgroundColor = [UIColor whiteColor];
//                [sender setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//            }
//
//        }
//        else if (_tmpBtn !=nil && _tmpBtn == sender){
//            sender.selected = YES;
//            if(sender.selected == YES){
//                sender.backgroundColor = [[UIColor alloc] initWithRed:0.0 green:0.4 blue:0.7 alpha:0.7];
//                [sender setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//                
//            }else if(sender.selected == NO){
//                sender.backgroundColor = [UIColor whiteColor];
//                [sender setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//            }
//
//            
//        }
//        else if (_tmpBtn!= sender  && _tmpBtn!=nil){
//            _tmpBtn.selected = NO;
//            sender.selected = YES;
//            _tmpBtn = sender;
//            if(sender.selected == YES){
//                sender.backgroundColor = [[UIColor alloc] initWithRed:0.0 green:0.4 blue:0.7 alpha:0.7];
//                [sender setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//                
//            }else if(sender.selected == NO){
//                sender.backgroundColor = [UIColor whiteColor];
//                [sender setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//            }
//
//        }
//
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
