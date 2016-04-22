//
//  OZTableViewCell.h
//  CleanTableView
//
//  Created by Zhanghua on 16/4/22.
//  Copyright © 2016年 OlivierZhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OZModel.h"

@interface OZTableViewCell : UITableViewCell

- (void)fillWithModel:(OZModel *)model;

@end
