//
//  ArrayDataSource.h
//  CleanTableView
//
//  Created by Zhanghua on 16/4/22.
//  Copyright © 2016年 OlivierZhang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^TableViewCellConfigureBlock)(id cell,id model);

@interface ArrayDataSource : NSObject <UITableViewDataSource>

- (id)initWithModels:(NSArray *)models
      cellIdentifier:(NSString *)identifier
      ConfigureBolck:(TableViewCellConfigureBlock)configureBlock;

- (id)modelAtIndexPath:(NSIndexPath *)indexPath;

@end
