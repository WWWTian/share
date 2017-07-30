//
//  VCFive43.m
//  我的share
//
//  Created by 王恬 on 2017/7/30.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCFive43.h"
#import "VCFive4.h"

@interface VCFive43 ()

@end

@implementation VCFive43

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem* left = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(press:)];
    self.navigationItem.leftBarButtonItem = left;
    left.tintColor = [UIColor whiteColor];
    
    UILabel* label = [[UILabel alloc]init];
    label.text = @"消息设置";
    label.font = [UIFont systemFontOfSize:17];
    [label setTextColor:[UIColor whiteColor]];
    label.frame = CGRectMake(49, 12, 100, 20);
    [self.navigationController.navigationBar addSubview:label];
    
    UITableView* tableView= [[UITableView alloc]initWithFrame:CGRectMake(10, 0, 355, 330) style:UITableViewStylePlain];
    
    
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    
    
}
- (void)press:(UIButton*)btn
{
    VCFive4* vc = [[VCFive4 alloc]init];
    UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
    [[UINavigationBar appearance]setTranslucent:YES];
    
    
    
    [self presentViewController:nav animated:nav completion:nil];
    
    
    
    
    
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1 ;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 50;
    
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
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 150, 20)];
        label1.text = @"接受新消息提醒";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIButton* button1 = [[UIButton alloc]initWithFrame:CGRectMake(270, 19, 15, 15)];
        [button1 setImage:[UIImage imageNamed:@"my_button_normal"] forState:UIControlStateNormal];
        [button1 setImage:[UIImage imageNamed:@"my_button_pressed"] forState:UIControlStateHighlighted];
        [button1 setImage:[UIImage imageNamed:@"my_button_pressed"] forState:UIControlStateSelected];
        [button1 addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];

        [cell addSubview:button1];
        
        
    }
    if (indexPath.section == 0&& indexPath.row == 1)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 150, 20)];
        label1.text = @"通知显示栏";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        
        UIButton* button1 = [[UIButton alloc]initWithFrame:CGRectMake(270, 19, 15, 15)];
        [button1 setImage:[UIImage imageNamed:@"my_button_normal"] forState:UIControlStateNormal];
        [button1 setImage:[UIImage imageNamed:@"my_button_pressed"] forState:UIControlStateHighlighted];
        [button1 setImage:[UIImage imageNamed:@"my_button_pressed"] forState:UIControlStateSelected];
        [button1 addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
        
        [cell addSubview:button1];
        
        
        
        
        
    }
    if (indexPath.section == 0&& indexPath.row == 2)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 80, 20)];
        label1.text = @"声音";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        
        
        UIButton* button1 = [[UIButton alloc]initWithFrame:CGRectMake(270, 19, 15, 15)];
        [button1 setImage:[UIImage imageNamed:@"my_button_normal"] forState:UIControlStateNormal];
        [button1 setImage:[UIImage imageNamed:@"my_button_pressed"] forState:UIControlStateHighlighted];
        [button1 setImage:[UIImage imageNamed:@"my_button_pressed"] forState:UIControlStateSelected];
        [button1 addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
        
        [cell addSubview:button1];
        

        
        
    }
    if (indexPath.section == 0&& indexPath.row == 3)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 80, 20)];
        label1.text = @"震动";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        
        UIButton* button1 = [[UIButton alloc]initWithFrame:CGRectMake(270, 19, 15, 15)];
        [button1 setImage:[UIImage imageNamed:@"my_button_normal"] forState:UIControlStateNormal];
        [button1 setImage:[UIImage imageNamed:@"my_button_pressed"] forState:UIControlStateHighlighted];
        [button1 setImage:[UIImage imageNamed:@"my_button_pressed"] forState:UIControlStateSelected];
        [button1 addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
        
        [cell addSubview:button1];
        
        
        
    }
    if (indexPath.section == 0&& indexPath.row == 4)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 80, 20)];
        label1.text = @"关注更新";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        
        
        UIButton* button1 = [[UIButton alloc]initWithFrame:CGRectMake(270, 19, 15, 15)];
        [button1 setImage:[UIImage imageNamed:@"my_button_normal"] forState:UIControlStateNormal];
        [button1 setImage:[UIImage imageNamed:@"my_button_pressed"] forState:UIControlStateHighlighted];
        [button1 setImage:[UIImage imageNamed:@"my_button_pressed"] forState:UIControlStateSelected];
        [button1 addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
        
        [cell addSubview:button1];
        
        
        
    }
    
    
    
    
    return cell;
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
