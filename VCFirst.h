//
//  VCFirst.h
//  我的share
//
//  Created by 王恬 on 2017/7/26.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCFirst : UIViewController<UIScrollViewDelegate,UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong)NSTimer* rotateTimer;  //让视图自动切换
@property (nonatomic, strong)UIPageControl *myPageControl;
@property (nonatomic,strong)UITableView *tableView;


@end
