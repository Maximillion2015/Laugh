//
//  YFRecommentLeftCell.m
//  百思不得姐
//
//  Created by 张艺峰 on 16/3/31.
//  Copyright © 2016年 张艺峰. All rights reserved.
//

#import "YFRecommentLeftCell.h"

@interface YFRecommentLeftCell()
@property (weak, nonatomic) IBOutlet UIView *tagView;
@end

@implementation YFRecommentLeftCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.textLabel.font = [UIFont systemFontOfSize:15];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    self.textLabel.textColor = selected ? [UIColor redColor] : [UIColor darkGrayColor];
    
    self.tagView.hidden = !selected;
}

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    YFRecommentLeftCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].lastObject;
    }
    return cell;
}

@end
