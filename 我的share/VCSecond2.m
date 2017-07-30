//
//  VCSecond2.m
//  我的share
//
//  Created by 王恬 on 2017/7/28.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCSecond2.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFour.h"
#import "VCFive.h"
#import "VCSecond3.h"

@interface VCSecond2 ()

@end

@implementation VCSecond2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor colorWithRed:244/255.0 green:244/255.0 blue:244/255.0 alpha:1];
    UIBarButtonItem* left = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(press1:)];
    left.tintColor = [UIColor whiteColor];
//
//    UIBarButtonItem* left = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"back_img的副本"] style:UIBarButtonItemStyleDone target:self action:@selector(press1:)];
    self.navigationItem.leftBarButtonItem = left;
    UILabel* label = [[UILabel alloc]init];
    label.text = @"上传";
    label.font = [UIFont systemFontOfSize:17];
    [label setTextColor:[UIColor whiteColor]];
    label.frame = CGRectMake(49, 12, 40, 20);
    [self.navigationController.navigationBar addSubview:label];
    
    UIButton* button1 = [[UIButton alloc]init];
    button1.frame = CGRectMake(10, 12+64, 215, 125);
    button1.backgroundColor = [UIColor colorWithRed:213/255.0 green:211/255.0 blue:212/255.0 alpha:1];
//    button1.tintColor = [UIColor colorWithRed:213/255.0 green:211/255.0 blue:212/255.0 alpha:1];
    [button1 setTitle:@"选择图片" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button1.titleLabel.font = [UIFont systemFontOfSize:12];
    [button1 addTarget:self action:@selector(pressXuan:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button1];
    
    UIImageView* image1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"定位"]];
    image1.frame = CGRectMake(255, 110, 20, 21);
    [self.view addSubview:image1];
    
    UIButton* button20 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button20.frame = CGRectMake(280, 110, 70, 20);
    [button20 setTitle:@"陕西省,西安市" forState:UIControlStateNormal];
    button20.titleLabel.font = [UIFont systemFontOfSize:10];
    [button20 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button20.layer.cornerRadius = 10;
    button20.layer.masksToBounds = YES;
    button20.backgroundColor = [UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:1];
    button20.tintColor = [UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:1];
    [self.view addSubview:button20];
    
    UIImageView* lineView = [[UIImageView alloc]init];
    lineView.backgroundColor = [UIColor colorWithRed:184/255.0 green:184/255.0 blue:184/255.0 alpha:1];
    lineView.frame = CGRectMake(0, 213, 375, 1);
    
    [self.view addSubview:lineView];
    

    
    UIButton* btn22 = [[UIButton alloc]init];
    btn22.frame = CGRectMake(10, 225, 325/4, 30);
    [btn22 setTitle:@"平面设计" forState:UIControlStateNormal];
    btn22.titleLabel.font = [UIFont systemFontOfSize:15];
    btn22.backgroundColor = [UIColor whiteColor];
    [btn22 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn22.layer.cornerRadius = 4;
    btn22.layer.masksToBounds = YES;
    [btn22 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn22];
    
    
    UIButton* btn23 = [[UIButton alloc]init];
    btn23.frame = CGRectMake(10+325/4+10, 225, 325/4, 30);
    [btn23 setTitle:@"网页设计" forState:UIControlStateNormal];
    btn23.titleLabel.font = [UIFont systemFontOfSize:15];
    btn23.backgroundColor = [UIColor whiteColor];
    [btn23 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn23.layer.cornerRadius = 4;
    btn23.layer.masksToBounds = YES;
    [btn23 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn23];
    
    UIButton* btn24 = [[UIButton alloc]init];
    btn24.frame = CGRectMake(10+325/4+10+325/4+10, 225, 325/4, 30);
    [btn24 setTitle:@"UI/icon" forState:UIControlStateNormal];
    btn24.titleLabel.font = [UIFont systemFontOfSize:15];
    btn24.backgroundColor = [UIColor whiteColor];
    [btn24 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn24.layer.cornerRadius = 4;
    btn24.layer.masksToBounds = YES;
    [btn24 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn24];
    
    UIButton* btn25= [[UIButton alloc]init];
    btn25.frame = CGRectMake(10+325/4+10+325/4+10+325/4+10, 225, 325/4, 30);
    [btn25 setTitle:@"插画/手绘" forState:UIControlStateNormal];
    btn25.titleLabel.font = [UIFont systemFontOfSize:15];
    btn25.backgroundColor = [UIColor whiteColor];
    [btn25 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn25.layer.cornerRadius = 4;
    btn25.layer.masksToBounds = YES;
    [btn25 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn25];
    
    UIButton* btn26 = [[UIButton alloc]init];
    btn26.frame = CGRectMake(10, 265, 325/4+15, 30);
    [btn26 setTitle:@"虚拟与设计" forState:UIControlStateNormal];
    btn26.titleLabel.font = [UIFont systemFontOfSize:15];
    btn26.backgroundColor = [UIColor whiteColor];
    [btn26 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn26.layer.cornerRadius = 4;
    btn26.layer.masksToBounds = YES;
    [btn26 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn26];
    
    UIButton* btn27 = [[UIButton alloc]init];
    btn27.frame = CGRectMake(10+325/4+15+10, 265, 325/4-7, 30);
    [btn27 setTitle:@"影视" forState:UIControlStateNormal];
    btn27.titleLabel.font = [UIFont systemFontOfSize:15];
    btn27.backgroundColor = [UIColor whiteColor];
    [btn27 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn27.layer.cornerRadius = 4;
    btn27.layer.masksToBounds = YES;
    [btn27 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn27];
    
    UIButton* btn28 = [[UIButton alloc]init];
    btn28.frame = CGRectMake(10+325/4+15+10+325/4-5+10-2, 265, 325/4-10+2, 30);
    [btn28 setTitle:@"摄影" forState:UIControlStateNormal];
    btn28.titleLabel.font = [UIFont systemFontOfSize:15];
    btn28.backgroundColor = [UIColor whiteColor];
    [btn28 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn28.layer.cornerRadius = 4;
    btn28.layer.masksToBounds = YES;
    [btn28 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn28];
    
    UIButton* btn29 = [[UIButton alloc]init];
    btn29.frame = CGRectMake(10+325/4+10+325/4+10+325/4+10, 265, 325/4, 30);
    [btn29 setTitle:@"其他" forState:UIControlStateNormal];
    btn29.titleLabel.font = [UIFont systemFontOfSize:15];
    btn29.backgroundColor = [UIColor whiteColor];
    [btn29 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn29.layer.cornerRadius = 4;
    btn29.layer.masksToBounds = YES;
    [btn29 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn29];
    
   
    placeHoderLable = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 365, 30)];//根据情况调节位置
    placeHoderLable.enabled = NO;
    placeHoderLable.text = @"作品名称";
    placeHoderLable.numberOfLines=0;
    placeHoderLable.font =  [UIFont systemFontOfSize:15];
    placeHoderLable.textColor = [UIColor lightGrayColor];
    _myTextView = [[UITextView alloc]initWithFrame:CGRectMake(0, 315, 375, 30)];
    _myTextView.backgroundColor = [UIColor whiteColor];
    
    [_myTextView addSubview:placeHoderLable];
    _myTextView.delegate=self;//记得设置textview的代理
    _myTextView.returnKeyType=UIReturnKeyDone;
    [self.view addSubview:_myTextView];
    
    placeHoderLable1 = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 365, 30)];//根据情况调节位置
    placeHoderLable1.enabled = NO;
    placeHoderLable1.text = @"请添加作品说明/文章内容......";
    placeHoderLable1.numberOfLines=0;
    placeHoderLable1.font =  [UIFont systemFontOfSize:15];
    placeHoderLable1.textColor = [UIColor lightGrayColor];
    _myTextView1 = [[UITextView alloc]initWithFrame:CGRectMake(0, 355, 375, 100)];
    _myTextView1.backgroundColor = [UIColor whiteColor];
    
    [_myTextView1 addSubview:placeHoderLable1];
    _myTextView1.delegate=self;//记得设置textview的代理
    _myTextView1.returnKeyType=UIReturnKeyDone;
    [self.view addSubview:_myTextView1];
    
    UIButton* button100 = [[UIButton alloc]init];
    button100.backgroundColor = [UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:1];
    [button100 setTitle:@"发布" forState:UIControlStateNormal];
    [button100 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button100.titleLabel.font = [UIFont systemFontOfSize:17];
    button100.frame = CGRectMake(10, 465, 355, 40);
    
    [self.view addSubview:button100];
    
    UILabel* label111 = [[UILabel alloc]init];
    label111.text = @"禁止下载";
    label111.font = [UIFont systemFontOfSize:12];
    label111.textColor = [UIColor darkGrayColor];
    label111.frame = CGRectMake(23, 516, 50, 17);
    [self.view addSubview:label111];
    UIButton* button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button3.frame = CGRectMake(10, 519, 11, 11);
    
    [button3 setImage:[UIImage imageNamed:@"checkbox_unchecked"] forState:UIControlStateNormal];
    [button3 setImage:[UIImage imageNamed:@"checkbox_unchecked"] forState:UIControlStateHighlighted];
    [button3 setImage:[UIImage imageNamed:@"checkbox_checked"] forState:UIControlStateSelected];
    [button3 addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    
    
  
    UIButton* btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.frame =CGRectMake(250, 150, 100, 25);
    [btn3 setTitle:@"原创作品" forState:UIControlStateNormal];
    [btn3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn3 setImage:[UIImage imageNamed:@"4445"] forState:UIControlStateNormal];
    [btn3 setImage:[UIImage imageNamed:@"444"] forState:UIControlStateSelected];
  
    
    [btn3 setTitleEdgeInsets:UIEdgeInsetsMake(5,-30 , 3, 40)];
    [btn3 setImageEdgeInsets:UIEdgeInsetsMake(0,70, 0, 0)];
//    btn3.backgroundColor = [UIColor colorWithRed:213/255.0 green:210/255.0 blue:212/255.0 alpha:1];
    btn3.backgroundColor = [UIColor whiteColor];

    
    [btn3.titleLabel setFont:[UIFont fontWithName:@"AppleGothic" size:13]];
    btn3.tintColor = [UIColor blackColor];
    
    [btn3.layer setBorderWidth:1];
    
    [btn3.layer setBorderColor:[UIColor blackColor].CGColor];
    btn3.layer.cornerRadius = 5;
    btn3.layer.masksToBounds = YES;
    [self.view addSubview:btn3];
    UIImageView* image120 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"120"]];
    image120.frame = CGRectMake(70, 0, 1, 30);
    [btn3 addSubview:image120];
    [btn3 addTarget:self action:@selector(pressA:) forControlEvents:UIControlEventTouchDown];
    
    _view = [[UIView alloc]init];
    _view.backgroundColor = [UIColor colorWithRed:213/255.0 green:210/255.0 blue:212/255.0 alpha:1];
    _view.frame = CGRectMake(250, 175,70 ,50 );
    
    UILabel* label401 = [[UILabel alloc]init];
    label401.text = @"设计资料";
    label401.textColor = [UIColor blackColor];
    label401.frame = CGRectMake(0, 0, 70, 50/3);
    label401.font = [UIFont systemFontOfSize:13];
    UILabel* label402 = [[UILabel alloc]init];
    label402.text = @"设计师观点";
    label402.textColor = [UIColor blackColor];
    label402.frame = CGRectMake(0, 50/3, 70, 50/3);
    label402.font = [UIFont systemFontOfSize:13];
    UILabel* label403 = [[UILabel alloc]init];
    label403.text = @"设计教程";
    label403.textColor = [UIColor blackColor];
    label403.font = [UIFont systemFontOfSize:13];
    label403.frame = CGRectMake(0, 50/3*2, 70, 50/3);
    [_view addSubview:label401];
    [_view addSubview:label402];
    [_view addSubview:label403];
    
    
    
}



- (void)pressA:(UIButton*)btn
{
    btn.selected = !btn.selected;
    if ([btn.backgroundColor isEqual:[UIColor whiteColor]]){
        btn.backgroundColor = [UIColor colorWithRed:213/255.0 green:210/255.0 blue:212/255.0 alpha:1];
    
        
   [self.view addSubview:_view];
        
        _view.hidden = NO;
     
        
    }else{
        btn.backgroundColor = [UIColor whiteColor];
        
        _view.hidden = YES;
        
    }
    
    
    

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
        UILabel* label2 = [[UILabel alloc]init];
        label2.text = @"1";
        label2.textColor = [UIColor colorWithRed:213/255.0 green:210/255.0 blue:212/255.0 alpha:1];

        label2.font = [UIFont systemFontOfSize:12];
        label2.frame = CGRectMake(0, 0, 40, 20);
        [cell addSubview:label2];

        
        
    }
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return 1;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1 ;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}





- (void) pressXuan:(UIButton *) btn
{
     VCSecond3*vc = [[VCSecond3 alloc]init];
    UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
    [[UINavigationBar appearance]setTranslucent:YES];
    
    
    
    [self presentViewController:nav animated:YES completion:nil];
    

}


- (void) changeButton:(UIButton*) btn
{
    
    btn.selected = !btn.selected;
    
    
}
-(void)textViewDidChange:(UITextView *)textView
{
    if ([_myTextView.text length] == 0) {
        [placeHoderLable setHidden:NO];
    }else{
        [placeHoderLable setHidden:YES];
    }
    if ([_myTextView1.text length] == 0) {
        [placeHoderLable1 setHidden:NO];
    }else{
        [placeHoderLable1 setHidden:YES];
    }

}


- (void) pressBtn:(UIButton *) btn
{
    btn.backgroundColor = [UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:1];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
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
