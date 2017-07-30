//
//  VCFive41.m
//  我的share
//
//  Created by 王恬 on 2017/7/30.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCFive41.h"
#import "VCFive4.h"

@interface VCFive41 ()

@end

@implementation VCFive41

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem* left = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(press:)];
    self.navigationItem.leftBarButtonItem = left;
    left.tintColor = [UIColor whiteColor];
    
    UILabel* label = [[UILabel alloc]init];
    label.text = @"基本资料";
    label.font = [UIFont systemFontOfSize:17];
    [label setTextColor:[UIColor whiteColor]];
    label.frame = CGRectMake(49, 12, 100, 20);
    [self.navigationController.navigationBar addSubview:label];

    
    

    UITableView* tableView= [[UITableView alloc]initWithFrame:CGRectMake(10, 0, 355, 370) style:UITableViewStylePlain];
    
    
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    
    
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
    
    if (indexPath.section == 0 && indexPath.row == 0) {
        return 100;
    }
    return 50;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *string = nil;
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:string];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:string];
    }
    
    
    if (indexPath.section == 0&& indexPath.row == 0)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 40, 80, 20)];
        label1.text = @"头像";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sixin_img1的副本"]];
        image2.frame = CGRectMake(100, 15, 70, 70);
        [cell addSubview:image2];
        
    }
    if (indexPath.section == 0&& indexPath.row == 1)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 80, 20)];
        label1.text = @"昵称";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        
        UILabel* label2 = [[UILabel alloc]initWithFrame:CGRectMake(100, 15, 80, 20)];
        label2.text = @"share小白";
        label2.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label2];
        
        
        
        
    }
    if (indexPath.section == 0&& indexPath.row == 2)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 80, 20)];
        label1.text = @"签名";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UILabel* label2 = [[UILabel alloc]initWithFrame:CGRectMake(100, 15, 250, 20)];
        label2.text = @"开心了就笑，不开心了就过会儿再笑";
        label2.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label2];
        

        
        
    }
    if (indexPath.section == 0&& indexPath.row == 3)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 80, 20)];
        label1.text = @"性别";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
   

        UIButton* btn1 = [[UIButton alloc]initWithFrame:CGRectMake(100, 15, 15, 20)];
        [btn1 setImage:[UIImage imageNamed:@"boy_button"] forState:UIControlStateNormal];
        [cell addSubview:btn1];
        
        UILabel* label2 = [[UILabel alloc]init];
        label2.frame = CGRectMake(120, 15, 20, 20);
        label2.text = @"男";
        [label2 setFont:[UIFont systemFontOfSize:15]];
        [cell addSubview:label2];
        
        UIButton* btn12 = [[UIButton alloc]initWithFrame:CGRectMake(160, 15, 15, 20)];
        [btn12 setImage:[UIImage imageNamed:@"girl_button"] forState:UIControlStateNormal];
        [cell addSubview:btn12];
        
        UILabel* label22 = [[UILabel alloc]init];
        label22.frame = CGRectMake(180, 15, 20, 20);
        label22.text = @"女";
        [label22 setFont:[UIFont systemFontOfSize:15]];
        [cell addSubview:label22];
 
        
        
    }
    if (indexPath.section == 0&& indexPath.row == 4)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(35, 16, 80, 20)];
        label1.text = @"邮箱";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UILabel* label2 = [[UILabel alloc]initWithFrame:CGRectMake(100, 15, 250, 20)];
        label2.text = @"186####3@qq.com";
        label2.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label2];
        

        
    }
    
    
    
    
    return cell;
}



- (void)press:(UIButton*)btn
{
    VCFive4 *vc = [[VCFive4 alloc]init];
    UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
    [[UINavigationBar appearance]setTranslucent:YES];
    
    
    
    [self presentViewController:nav animated:nav completion:nil];


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
