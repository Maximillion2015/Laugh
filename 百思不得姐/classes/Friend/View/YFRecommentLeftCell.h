//
//  YFRecommentLeftCell.h
//  百思不得姐
//
//  Created by 张艺峰 on 16/3/31.
//  Copyright © 2016年 张艺峰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YFRecommendType.h"

@interface YFRecommentLeftCell : UITableViewCell
@property (nonatomic, strong) YFRecommendType *type;
+ (instancetype)cellWithTableView:(UITableView *)tableView;
@end
