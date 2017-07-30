//
//  VCFive211.m
//  我的share
//
//  Created by 王恬 on 2017/7/30.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import "VCFive211.h"
#define H [UIScreen mainScreen].bounds.size.height
#define W [UIScreen mainScreen].bounds.size.width
#import "VCFive21.h"

@interface VCFive211 ()
@property(nonatomic,retain)UITableView *tableView;
@property(nonatomic,retain)NSMutableArray *messageArray;
@property(nonatomic,retain)NSMutableArray *rowheightArray;
@property(nonatomic,retain)NSNumber *rowheight;
@property(nonatomic,retain)UITextField *text;
@end

@implementation VCFive211

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    self.view.backgroundColor=[UIColor whiteColor];
    self.navigationItem.title=@"与share小兰对话";
    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,nil]];
    
    
    UIBarButtonItem* left = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(back:)];
    self.navigationItem.leftBarButtonItem = left;
    left.tintColor = [UIColor whiteColor];

    
    _text=[[UITextField alloc]initWithFrame:CGRectMake(W*0.07, W*0.01, W*0.75, H*0.06)];
    _text.borderStyle=UITextBorderStyleRoundedRect;
    
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.backgroundColor=[UIColor colorWithRed:69/255.0 green:141/255.0 blue:203/255.0 alpha:1];
    [btn setTitle:@"发送" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(send) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.frame=CGRectMake(W*0.82+W*0.01, W*0.01, W*0.15, H*0.06);
    btn.layer.borderWidth=1;
    btn.layer.cornerRadius=10;
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, H-44, W, 44)];
    view.backgroundColor=[UIColor blackColor];
    view.tag=101;
    [view addSubview:_text];
    [view addSubview:btn];
    [self.view addSubview:view];
    
    _tableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, W, H-44*2) style:UITableViewStylePlain];
    _tableView.delegate=self;
    _tableView.dataSource=self;
    _tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    _tableView.showsVerticalScrollIndicator=NO;
    [self.view addSubview:_tableView];
    [self.view bringSubviewToFront:view];
    
    _messageArray=[[NSMutableArray alloc]init];
    [_messageArray addObject:@" 你拍的真不错!"];
    [_messageArray addObject:@"谢谢，已关注你。"];
    [_messageArray addObject:@"好专业的照片，非常喜欢这种风格，期待你更好的作品"];
    [_messageArray addObject:@"嗯嗯，好的"];
    
    _rowheightArray=[[NSMutableArray alloc]init];
    for(NSString *str in _messageArray)
    {
        CGSize size=[str
                     sizeWithFont:[UIFont systemFontOfSize:18] constrainedToSize:CGSizeMake(W*0.6, MAXFLOAT) lineBreakMode:NSLineBreakByCharWrapping];
        int height=size.height+W*0.15;
        _rowheight=[NSNumber numberWithInt:height];
        [_rowheightArray addObject:_rowheight];
    }
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardWillAppear:) name:UIKeyboardWillShowNotification object:nil];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardWillDisAppear:) name:UIKeyboardWillHideNotification object:nil];
    
}

-(void)send{
    [_messageArray addObject:_text.text];
    CGSize size=[_text.text sizeWithFont:[UIFont systemFontOfSize:18] constrainedToSize:CGSizeMake(W*0.6, MAXFLOAT) lineBreakMode:NSLineBreakByCharWrapping];
    int height=size.height+W*0.15;
    _rowheight=[NSNumber numberWithInt:height];
    [_rowheightArray addObject:_rowheight];
    NSIndexPath *indexPath=[NSIndexPath indexPathForRow:(_messageArray.count-1) inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationBottom];
    [_tableView reloadData];
    [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionBottom animated:YES];
    [self.view endEditing:YES];
    _text.text=@"";
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _messageArray.count;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[[UITableViewCell alloc]init];
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    if(indexPath.row%2!=0){
        UIImageView *imageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sixin_img2.png"]];
        imageView.frame=CGRectMake(W*0.01, W*0.11, W*0.1, W*0.1);
        [cell.contentView addSubview:imageView];
        
        UILabel *label=[[UILabel alloc]init];
        label.numberOfLines=0;
        label.text=_messageArray[indexPath.row];
        label.font=[UIFont systemFontOfSize:18];
        CGSize size=[label.text sizeWithFont:label.font constrainedToSize:CGSizeMake(W*0.6, MAXFLOAT) lineBreakMode:NSLineBreakByCharWrapping];
        label.frame=CGRectMake(W*0.16, W*0.05, size.width, size.height);
        [cell.contentView addSubview:label];
        
        UIImageView *imageviewbubble=[[UIImageView alloc]init];
        UIImage *image=[UIImage imageNamed:@"chatleft.png"];
        imageviewbubble.frame=CGRectMake(W*0.09, W*0.01, size.width+W*0.15, size.height+W*0.15);
        UIEdgeInsets edge=UIEdgeInsetsMake(image.size.height*0.5, image.size.width*0.8, image.size.height*0.8, image.size.width*0.5);
        image=[image resizableImageWithCapInsets:edge resizingMode:UIImageResizingModeStretch];
        imageviewbubble.image=image;
        [cell.contentView addSubview:imageviewbubble];
        
    }
    else{
        UIImageView *imageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sixin_img1.png"]];
        imageView.frame=CGRectMake(W-W*0.11, W*0.11, W*0.1, W*0.1);
        [cell.contentView addSubview:imageView];
        
        UILabel *label=[[UILabel alloc]init];
        label.numberOfLines=0;
        label.text=_messageArray[indexPath.row];
        label.font=[UIFont systemFontOfSize:18];
        CGSize size=[label.text sizeWithFont:label.font constrainedToSize:CGSizeMake(W*0.6, MAXFLOAT) lineBreakMode:NSLineBreakByCharWrapping];
        label.frame=CGRectMake(W-W*0.14-size.width, W*0.05, size.width, size.height);
        [cell.contentView addSubview:label];
        
        UIImageView *imageviewbubble=[[UIImageView alloc]init];
        UIImage *image=[UIImage imageNamed:@"chatright.png"];
        imageviewbubble.frame=CGRectMake(W-W*0.3-size.width, W*0.01, size.width+W*0.22, size.height+W*0.15);
        UIEdgeInsets edge=UIEdgeInsetsMake(image.size.height*0.5, image.size.width*0.5, image.size.height*0.8, image.size.width*0.8);
        image=[image resizableImageWithCapInsets:edge resizingMode:UIImageResizingModeStretch];
        imageviewbubble.image=image;
        [cell.contentView addSubview:imageviewbubble];
        
    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSNumber *height=_rowheightArray[indexPath.row];
    int rowheight=[height intValue];
    return rowheight+W*0.05;
}

- (void)keyboardWillDisAppear:(NSNotification *)notification{
    CGFloat duration=[notification.userInfo[UIKeyboardAnimationDurationUserInfoKey]doubleValue];
    [UIView animateWithDuration:duration animations:^{self.view.transform=CGAffineTransformMakeTranslation(0, 0);}];
}

- (void)keyboardWillAppear:(NSNotification *)notification{
    CGRect keyboardFrame=[notification.userInfo[UIKeyboardFrameEndUserInfoKey]CGRectValue];
    CGFloat duration=[notification.userInfo[UIKeyboardAnimationDurationUserInfoKey]doubleValue];
    CGFloat keyboardY=keyboardFrame.origin.y;
    [UIView animateWithDuration:duration animations:^{self.view.transform=CGAffineTransformMakeTranslation(0, keyboardY-self.view.frame.size.height);}];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.view endEditing:YES];
}

-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}

- (void)back:(UIButton *)btn
{
    VCFive21* vc = [[VCFive21 alloc]init];
    UINavigationController* nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:0.21 green:0.56 blue:0.80 alpha:0.5]];
    [[UINavigationBar appearance]setTranslucent:YES];
    
    
    
    [self presentViewController:nav animated:YES completion:nil];
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
