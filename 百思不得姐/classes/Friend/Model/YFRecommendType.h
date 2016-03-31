//
//  YFRecommendType.h
//  百思不得姐
//
//  Created by 张艺峰 on 16/3/31.
//  Copyright © 2016年 张艺峰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YFRecommendType : NSObject
/**
 *  count = 4;
 *  id = 43;
 *  name = "\U751f\U6d3b";
 */
@property (nonatomic, assign) int count;
@property (nonatomic, assign) int id;
@property (nonatomic, copy) NSString *name;
@end
