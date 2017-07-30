//
//  VCFirst.m
//  我的share
//
//  Created by 王恬 on 2017/7/26.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCFirst.h"
#import "VCFirst1.h"



@interface VCFirst ()

@property(nonatomic ,strong) UITableView *tabView;

@end

@implementation VCFirst


- (void)viewDidLoad {
    [super viewDidLoad];
    [self tabView];
//     Do any additional setup after loading the view.


  
    self.view.backgroundColor = [UIColor colorWithRed:244/255.0 green:244/255.0 blue:244/255.0 alpha:1];
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 44)];
    titleLabel.font = [UIFont boldSystemFontOfSize:22];
    titleLabel.textColor = [UIColor whiteColor];
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.text = @"SHARE";
    self.navigationItem.titleView = titleLabel;
    self.navigationController.navigationBar.translucent = YES;
    self.navigationController.navigationBar.alpha = 0;

    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    
    UITableView* tableView= [[UITableView alloc]initWithFrame:CGRectMake(10, 0, 355, 667) style:UITableViewStylePlain];
    
    tableView.tableHeaderView = [[UIView alloc]initWithFrame:CGRectMake(10, 0, 355, 175)];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    
    
    UIScrollView* sv = [[UIScrollView alloc]init];
    sv.frame = CGRectMake(0, 0,[UIScreen mainScreen].bounds.size.width-20,175);
    sv.pagingEnabled = YES;
//    sv.scrollEnabled = YES;
//    sv.scrollsToTop = NO;
    sv.alwaysBounceVertical = NO;
    sv.contentSize = CGSizeMake(([UIScreen mainScreen].bounds.size.width-20)*4, 175);
//    sv.pagingEnabled = YES;
    sv.bounces = YES;
    sv.showsHorizontalScrollIndicator = NO;
    sv.delegate = self;
    
    for (int i =0; i<4; i++) {
        
        NSString * strName = [NSString stringWithFormat:@"main_img%d",i+1];
        
        UIImage * image = [UIImage imageNamed:strName];
        
        UIImageView* imageView = [[UIImageView alloc]initWithImage:image];
        imageView.tag = 1000+i;
        //设置frame
        imageView.frame = CGRectMake(375*i, 0, 355, 175);
        //添加到sctollview
        [sv addSubview:imageView];
    }
    
    UIImageView* tempView = [sv viewWithTag:1000];
    UIImageView* imageView1 = [[UIImageView alloc]initWithFrame:CGRectMake(375*4, 0, 375, 175)];
    imageView1.image = tempView.image;
    [sv addSubview:imageView1];

    
    [tableView.tableHeaderView addSubview:sv];
    sv.tag = 1000;
  
    //创建 初始化
    _myPageControl= [[UIPageControl alloc]init];
    //设置frame
    _myPageControl.frame = CGRectMake(103, 160-3, 150, 20);
    //设置点的个数
    _myPageControl.numberOfPages=4;
    //设置指示器默认显示的颜色
    _myPageControl.pageIndicatorTintColor = [UIColor whiteColor];
    //设置当前选中的颜色
    _myPageControl.currentPageIndicatorTintColor = [UIColor blueColor];
    //设置当前默认显示位置
    _myPageControl.currentPage = 0;
    _myPageControl.alpha = 0.5;
//    
//    将pageControl添加到视图中
    [tableView.tableHeaderView addSubview:_myPageControl];
    self.rotateTimer = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(changeView) userInfo:nil repeats:YES];
    
}
//开始拖拽的代理方法，在此方法中暂停定时器。
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    //setFireDate：设置定时器在什么时间启动
    //[NSDate distantFuture]:将来的某一时刻
    NSLog(@"kaishi");
    [self.rotateTimer setFireDate:[NSDate distantFuture]];
}
//视图静止时（没有人在拖拽），开启定时器，让自动轮播
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    //视图静止之后，过1.5秒在开启定时器
    //[NSDate dateWithTimeInterval:1.5 sinceDate:[NSDate date]]  返回值为从现在时刻开始 再过1.5秒的时刻。
    NSLog(@"开启定时器");
    [self.rotateTimer setFireDate:[NSDate dateWithTimeInterval:1.5 sinceDate:[NSDate date]]];
}
- (void)change {
    NSLog(@"开启定时器");
    [self.rotateTimer setFireDate:[NSDate dateWithTimeInterval:1.5 sinceDate:[NSDate date]]];
}

//定时器的回调方法   切换界面
- (void)changeView{
    //得到scrollView
    UIScrollView *scrollView = [self.view viewWithTag:1000];
    //通过改变contentOffset来切换滚动视图的子界面
    float offset_X = scrollView.contentOffset.x;
    //每次切换一个屏幕
    offset_X += CGRectGetWidth(self.view.frame);
    
    //说明要从最右边的多余视图开始滚动了，最右边的多余视图实际上就是第一个视图。所以偏移量需要更改为第一个视图的偏移量。
    if (offset_X > CGRectGetWidth(self.view.frame)*4) {
        scrollView.contentOffset = CGPointMake(0, 0);
        
    }
    //说明正在显示的就是最右边的多余视图，最右边的多余视图实际上就是第一个视图。所以pageControl的小白点需要在第一个视图的位置。
    if (offset_X == CGRectGetWidth(self.view.frame)*4) {
        self.myPageControl.currentPage = 0;
    }else{
        self.myPageControl.currentPage = offset_X/CGRectGetWidth(self.view.frame);
    }
    
    //得到最终的偏移量
    CGPoint resultPoint = CGPointMake(offset_X, 0);
    //切换视图时带动画效果
    //最右边的多余视图实际上就是第一个视图，现在是要从第一个视图向第二个视图偏移，所以偏移量为一个屏幕宽度
    if (offset_X >CGRectGetWidth(self.view.frame)*4) {
        self.myPageControl.currentPage = 1;
        [scrollView setContentOffset:CGPointMake(CGRectGetWidth(self.view.frame), 0) animated:YES];
    }else{
        [scrollView setContentOffset:resultPoint animated:YES];
    }
    
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

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  [tableView deselectRowAtIndexPath:indexPath animated:NO];
    if (indexPath.section == 0 && indexPath.row == 0) {
       
         VCFirst1 *vc = [[VCFirst1 alloc]init];
        UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc];
        
        [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
        [[UINavigationBar appearance]setTranslucent:YES];
     
        

        [self presentViewController:nav animated:YES completion:nil];

    }
    
}






// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)



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

