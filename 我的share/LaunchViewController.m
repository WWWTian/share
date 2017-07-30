//
//  LaunchViewController.m
//  我的share
//
//  Created by 王恬 on 2017/7/26.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "LaunchViewController.h"
#import "VCRoot.h"

@interface LaunchViewController ()

@end

@implementation LaunchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
 
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"kaiji2"]];
   
    UIImageView* image01 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"newbackground"]];
    image01.frame = [UIScreen mainScreen].bounds;
    [self.view addSubview:image01];
    UIImageView* image02 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"login_logo"]];
    image02.frame = CGRectMake(110, 150, 160, 160);
    [self.view addSubview:image02];
    UILabel* label = [[UILabel alloc]init];
    label.font = [UIFont systemFontOfSize:40];
    label.text = @"SHARE";
    label.textColor = [UIColor whiteColor];
    label.frame = CGRectMake(125, 320, 150, 40);
    [self.view addSubview:label];
    
    [self performSelector:@selector(changeView) withObject:self afterDelay:2];
    // Do any additional setup after loading the view.
}

//切换到下一个界面
- (void)changeView {
    UIWindow *window = self.view.window;
    VCRoot *main = [[VCRoot alloc] init];
    
    //添加一个缩放效果
    main.view.transform = CGAffineTransformMakeScale(0.2, 0.2);
    [UIView animateWithDuration:0.1 animations:^{
        main.view.transform = CGAffineTransformIdentity;
    }];
    
    window.rootViewController = main;
    
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
