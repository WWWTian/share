//
//  VCFive22.m
//  我的share
//
//  Created by 王恬 on 2017/7/30.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCFive22.h"
#import "VCFive2.h"

@interface VCFive22 ()

@end

@implementation VCFive22

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem* left = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(press:)];
    self.navigationItem.leftBarButtonItem = left;
    left.tintColor = [UIColor whiteColor];
    
    UILabel* label = [[UILabel alloc]init];
    label.text = @"新关注的";
    label.font = [UIFont systemFontOfSize:17];
    [label setTextColor:[UIColor whiteColor]];
    label.frame = CGRectMake(49, 12, 100, 20);
    [self.navigationController.navigationBar addSubview:label];
    
    UITableView* tableView= [[UITableView alloc]initWithFrame:CGRectMake(10, 0, 355, 600) style:UITableViewStylePlain];
    
    
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    
    
    
}
- (void)press:(UIButton*)btn
{
    VCFive2* vc = [[VCFive2 alloc]init];
    UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
    [[UINavigationBar appearance]setTranslucent:YES];
    
    
    
    [self presentViewController:nav animated:YES completion:nil];
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1 ;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 80;
    
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
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(105, 30, 80, 20)];
        label1.text = @"share小格";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sixin_img1的副本"]];
        image2.frame = CGRectMake(35, 15,50, 50);
        [cell addSubview:image2];
        
        UIButton* button1 = [[UIButton alloc]initWithFrame:CGRectMake(270, 28, 60, 25)];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_normal"] forState:UIControlStateNormal];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_pressed"] forState:UIControlStateHighlighted];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_pressed"] forState:UIControlStateSelected];
        [button1 addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
        
        [cell addSubview:button1];

    
        
        
        
        
    }
    if (indexPath.section == 0&& indexPath.row == 1)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(105, 30, 80, 20)];
        label1.text = @"share小兰";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sixin_img2"]];
        image2.frame = CGRectMake(35, 15,50, 50);
        [cell addSubview:image2];
        
        UIButton* button1 = [[UIButton alloc]initWithFrame:CGRectMake(270, 28, 60, 25)];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_normal"] forState:UIControlStateNormal];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_pressed"] forState:UIControlStateHighlighted];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_pressed"] forState:UIControlStateSelected];
        [button1 addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
        
        [cell addSubview:button1];
        

   
    }
    if (indexPath.section == 0&& indexPath.row == 2)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(105, 30, 80, 20)];
        label1.text = @"share小明";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sixin_img3"]];
        image2.frame = CGRectMake(35, 15,50, 50);
        [cell addSubview:image2];
        
        UIButton* button1 = [[UIButton alloc]initWithFrame:CGRectMake(270, 28, 60, 25)];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_normal"] forState:UIControlStateNormal];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_pressed"] forState:UIControlStateHighlighted];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_pressed"] forState:UIControlStateSelected];
        [button1 addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
        
        [cell addSubview:button1];
        

    }
    if (indexPath.section == 0&& indexPath.row == 3)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(105, 30, 80, 20)];
        label1.text = @"share小明";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sixin_img4"]];
        image2.frame = CGRectMake(35, 15,50, 50);
        [cell addSubview:image2];
        
        UIButton* button1 = [[UIButton alloc]initWithFrame:CGRectMake(270, 28, 60, 25)];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_normal"] forState:UIControlStateNormal];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_pressed"] forState:UIControlStateHighlighted];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_pressed"] forState:UIControlStateSelected];
        [button1 addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
        
        [cell addSubview:button1];
        

    }
    if (indexPath.section == 0&& indexPath.row == 4)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(105, 30, 80, 20)];
        label1.text = @"share萌萌";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"guanzhu_img5"]];
        image2.frame = CGRectMake(35, 15,50, 50);
        [cell addSubview:image2];
        
        UIButton* button1 = [[UIButton alloc]initWithFrame:CGRectMake(270, 28, 60, 25)];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_normal"] forState:UIControlStateNormal];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_pressed"] forState:UIControlStateHighlighted];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_pressed"] forState:UIControlStateSelected];
        [button1 addTarget:self action:@selector(changeButton:) forControlEvents:UIControlEventTouchUpInside];
        
        [cell addSubview:button1];
        

    }
    if (indexPath.section == 0&& indexPath.row == 5)
    {
        UILabel* label1 = [[UILabel alloc]initWithFrame:CGRectMake(105, 30, 80, 20)];
        label1.text = @"shareLity";
        label1.font = [UIFont systemFontOfSize:15];
        [cell addSubview:label1];
        
        UIImageView* image2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"guanzhu_img6"]];
        image2.frame = CGRectMake(35, 15,50, 50);
        [cell addSubview:image2];
        UIButton* button1 = [[UIButton alloc]initWithFrame:CGRectMake(270, 28, 60, 25)];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_normal"] forState:UIControlStateNormal];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_pressed"] forState:UIControlStateHighlighted];
        [button1 setImage:[UIImage imageNamed:@"guanzhu_pressed"] forState:UIControlStateSelected];
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
