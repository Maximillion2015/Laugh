//
//  YFRecommendViewController.m
//  百思不得姐
//
//  Created by 张艺峰 on 16/3/31.
//  Copyright © 2016年 张艺峰. All rights reserved.
//

#import "YFRecommendViewController.h"
#import <AFNetworking.h>
#import "YFRecommendType.h"
#import <MJExtension.h>
#import "YFRecommentLeftCell.h"

@interface YFRecommendViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSArray *recommendTypeArray;
@property (weak, nonatomic) IBOutlet UITableView *recommentTypeTableView;
@end

@implementation YFRecommendViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.recommentTypeTableView.delegate = self;
    
    self.view.backgroundColor = YFGlobleColor;
    self.navigationItem.title = @"我的关注";
    self.recommentTypeTableView.backgroundColor = YFColor(229, 229, 229);
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[@"a"] = @"category";
    dict[@"c"] = @"subscribe";
    [manager GET:@"http://api.budejie.com/api/api_open.php" parameters:dict success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        NSLog(@"%@", responseObject);
        self.recommendTypeArray = [YFRecommendType mj_objectArrayWithKeyValuesArray:responseObject[@"list"]];
        [self.recommentTypeTableView reloadData];
        NSLog(@"%lu", (unsigned long)self.recommendTypeArray.count);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        YFLogFunc;
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//    NSLog(@"%lu", (unsigned long)self.recommendTypeArray.count);
    return self.recommendTypeArray.count;
}


- (YFRecommentLeftCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    YFRecommentLeftCell *cell = [YFRecommentLeftCell cellWithTableView:tableView];
    YFRecommendType *type = self.recommendTypeArray[indexPath.row];
    cell.type = type;
    cell.textLabel.text = type.name;
    
    return cell;
}

@end
