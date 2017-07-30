//
//  VCFive.h
//  我的share
//
//  Created by 王恬 on 2017/7/26.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCFive : UIViewController<UITableViewDelegate,UITableViewDataSource>


@property (nonatomic,strong) UITableView * tableView;
@property(strong, nonatomic)NSArray* contentArray;
@property(strong, nonatomic)NSArray* imageArray;

@end
