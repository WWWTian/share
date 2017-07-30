//
//  VCSecond2.h
//  我的share
//
//  Created by 王恬 on 2017/7/28.
//  Copyright © 2017年 王恬. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCSecond2 : UIViewController<UITextViewDelegate,UITableViewDelegate,UITableViewDataSource>
{
    UITextView* _myTextView;
    UITextView* _myTextView1;
    UILabel* placeHoderLable1;
    UILabel* placeHoderLable;
    UITableView* _tableView;
    NSMutableDictionary* _state;
    NSMutableDictionary* _headImageView;
    UIView* _view;
    
}
@end
