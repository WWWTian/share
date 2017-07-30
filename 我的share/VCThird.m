//
//  VCThird.m
//  我的share
//
//  Created by 王恬 on 2017/7/26.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCThird.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"
#import "VCFour.h"
#import "VCFive.h"


@interface VCThird ()

@end



@implementation VCThird

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:244/255.0 green:244/255.0 blue:244/255.0 alpha:1];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    titleLabel.font = [UIFont boldSystemFontOfSize:22];
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.text = @"文章";
    self.navigationItem.titleView = titleLabel;
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.alpha = 0;
    
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    UIBarButtonItem* left = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(press1:)];
    self.navigationItem.leftBarButtonItem = left;
    
    
    UIImageView* imageView = [[UIImageView alloc]init];
    imageView.backgroundColor = [UIColor colorWithRed:91/255.0 green:91/255.0 blue:91/255.0 alpha:1];
    imageView.frame = CGRectMake(0,64, 375, 45);
    [self.view addSubview:imageView];
    
    
    UITableView* tableView= [[UITableView alloc]initWithFrame:CGRectMake(10, 50+60, 355, 667) style:UITableViewStylePlain];
    
    
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];


    
    
    _btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn1.frame = CGRectMake(0, 64, 355/3 , 45);
    [_btn1 setTitle:@"精选文章" forState:UIControlStateNormal];
    [_btn1 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btn1 setTitle:@"精选文章" forState:UIControlStateSelected];
    [_btn1 setTitleColor:[UIColor colorWithRed:173/255.0 green:173/255.0 blue:173/255.0 alpha:173/255.0] forState:UIControlStateSelected];
    [_btn1 addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
    _btn1.userInteractionEnabled = YES;
    [_btn1 setTag:101];
//    [_btn1 addTarget:self action:@selector(pressPush:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:_btn1];
    

     _btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn2.frame = CGRectMake(355/3+10, 64, 355/3 , 45);
    [_btn2 setTitle:@"热门推荐" forState:UIControlStateNormal];
    [_btn2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btn2 setTitle:@"热门推荐" forState:UIControlStateSelected];
    [_btn2 setTitleColor:[UIColor colorWithRed:173/255.0 green:173/255.0 blue:173/255.0 alpha:173/255.0] forState:UIControlStateSelected];
    [_btn2 addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
    _btn2.userInteractionEnabled = YES;
    [_btn2 setTag:102];
    [self.view addSubview:_btn2];

    _btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    _btn3.frame = CGRectMake(355/3+355/3+10+10, 64, 355/3 , 45);
    [_btn3 setTitle:@"全部文章" forState:UIControlStateNormal];
    [_btn3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_btn3 setTitle:@"全部文章" forState:UIControlStateSelected];
    [_btn3 setTitleColor:[UIColor colorWithRed:173/255.0 green:173/255.0 blue:173/255.0 alpha:173/255.0] forState:UIControlStateSelected];
    [_btn3 addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
    _btn3.userInteractionEnabled = YES;
    [_btn3 setTag:103];
    [self.view addSubview:_btn3
     ];
    
    UIImageView* imageView1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"essay_line的副本1"]];
    imageView1.frame = CGRectMake(355/3, 71, 2, 31);
    [self.view addSubview:imageView1];
    
    UIImageView* imageView2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"essay_line的副本1"]];
    imageView2.frame = CGRectMake(355/3+10+355/3, 71, 2, 31);
    [self.view addSubview:imageView2];
 
}




- (void) changeButton:(UIButton*) sender
{
    


        if (_tmpBtn == nil){
            sender.selected = YES;
            _tmpBtn = sender;
        }
        else if (_tmpBtn !=nil && _tmpBtn == sender){
            sender.selected = YES;
            
        }
        else if (_tmpBtn!= sender  && _tmpBtn!=nil){
            _tmpBtn.selected = NO;
            sender.selected = YES;
            _tmpBtn = sender;
        }  
        
        
  
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 130;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 13;
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
        UIImageView* imageView1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"list_img1的副本"]];
        imageView1.frame = CGRectMake(0, 0, 175, 130);
        [cell addSubview:imageView1];
        UILabel* label1 = [[UILabel alloc]init];
        label1.text = @"假日";
        label1.textColor = [UIColor blackColor];
        label1.font = [UIFont systemFontOfSize:18];
        label1.frame = CGRectMake(195, 20, 40, 10);
        [cell addSubview:label1];
        
        UILabel* label2 = [[UILabel alloc]init];
        label2.text = @"原创-插画-练习习作";
        label2.textColor = [UIColor blackColor];
        label2.font = [UIFont systemFontOfSize:12];
        label2.frame = CGRectMake(195, 45, 150, 10);
        [cell addSubview:label2];
        
        UILabel* label3 = [[UILabel alloc]init];
        label3.text = @"15分钟前";
        label3.textColor = [UIColor blackColor];
        label3.font = [UIFont systemFontOfSize:12];
        label3.frame = CGRectMake(195, 67, 50, 10);
        [cell addSubview:label3];
        
        UILabel* label4 = [[UILabel alloc]init];
        label4.text = @"share小白";
        label4.textColor = [UIColor blackColor];
        label4.font = [UIFont systemFontOfSize:13];
        label4.frame = CGRectMake(270, 17, 70, 20);
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
    if (indexPath.section == 1 && indexPath.row == 0)
    {
        UIImageView* imageView1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"list_img2的副本"]];
        imageView1.frame = CGRectMake(0, 0, 175, 130);
        [cell addSubview:imageView1];
        UILabel* label1 = [[UILabel alloc]init];
        label1.text = @"国外画册欣赏";
        label1.textColor = [UIColor blackColor];
        label1.font = [UIFont systemFontOfSize:15];
        label1.frame = CGRectMake(195, 20, 100, 10);
        [cell addSubview:label1];
        
        UILabel* label2 = [[UILabel alloc]init];
        label2.text = @"平面设计-画册设计";
        label2.textColor = [UIColor blackColor];
        label2.font = [UIFont systemFontOfSize:12];
        label2.frame = CGRectMake(195, 55, 150, 10);
        [cell addSubview:label2];
        
        UILabel* label3 = [[UILabel alloc]init];
        label3.text = @"16分钟前";
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
    if (indexPath.section == 2 && indexPath.row == 0)
    {
        UIImageView* imageView1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"list_img3的副本"]];
        imageView1.frame = CGRectMake(0, 0, 175, 130);
        [cell addSubview:imageView1];
        UILabel* label1 = [[UILabel alloc]init];
        label1.text = @"collection扁平设计";
        label1.textColor = [UIColor blackColor];
        label1.font = [UIFont systemFontOfSize:15];
        label1.frame = CGRectMake(195, 20, 130, 10);
        [cell addSubview:label1];
        
        UILabel* label2 = [[UILabel alloc]init];
        label2.text = @"平面设计-海报设计";
        label2.textColor = [UIColor blackColor];
        label2.font = [UIFont systemFontOfSize:12];
        label2.frame = CGRectMake(195, 55, 150, 10);
        [cell addSubview:label2];
        
        UILabel* label3 = [[UILabel alloc]init];
        label3.text = @"17分钟前";
        label3.textColor = [UIColor blackColor];
        label3.font = [UIFont systemFontOfSize:12];
        label3.frame = CGRectMake(195, 73, 100, 10);
        [cell addSubview:label3];
        
        UILabel* label4 = [[UILabel alloc]init];
        label4.text = @"share小吕";
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
    if (indexPath.section == 3 && indexPath.row == 0)
    {
        UIImageView* imageView1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"note_img4的副本"]];
        imageView1.frame = CGRectMake(0, 0, 175, 130);
        [cell addSubview:imageView1];
        UILabel* label1 = [[UILabel alloc]init];
        label1.text = @"版式整理术";
        label1.textColor = [UIColor blackColor];
        label1.font = [UIFont systemFontOfSize:15];
        label1.frame = CGRectMake(195, 20, 100, 10);
        [cell addSubview:label1];
        
        UILabel* label2 = [[UILabel alloc]init];
        label2.text = @"原创-插画-练习习作";
        label2.textColor = [UIColor blackColor];
        label2.font = [UIFont systemFontOfSize:12];
        label2.frame = CGRectMake(195, 55, 150, 10);
        [cell addSubview:label2];
        
        UILabel* label3 = [[UILabel alloc]init];
        label3.text = @"18分钟前";
        label3.textColor = [UIColor blackColor];
        label3.font = [UIFont systemFontOfSize:12];
        label3.frame = CGRectMake(195, 73, 100, 10);
        [cell addSubview:label3];
        
        UILabel* label4 = [[UILabel alloc]init];
        label4.text = @"share小黑";
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



- (void) press1:(UIButton*) btn
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
    tabC.selectedIndex = 2;
    
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
