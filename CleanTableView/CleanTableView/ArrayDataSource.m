//
//  ArrayDataSource.m
//  CleanTableView
//
//  Created by Zhanghua on 16/4/22.
//  Copyright © 2016年 OlivierZhang. All rights reserved.
//

#import "ArrayDataSource.h"

@interface ArrayDataSource ()

@property (nonatomic, strong) NSArray *models;
@property (nonatomic, copy) NSString *cellIdentifier;
@property (nonatomic, copy) TableViewCellConfigureBlock configureCellBlock;

@end

@implementation ArrayDataSource

- (id)initWithModels:(NSArray *)models cellIdentifier:(NSString *)identifier ConfigureBolck:(TableViewCellConfigureBlock)configureBlock {
    self = [super init];
    if (self) {
        self.models = models;
        self.cellIdentifier = identifier;
        self.configureCellBlock = configureBlock;
    }
    return self;
}

- (id)modelAtIndexPath:(NSIndexPath *)indexPath {
    return self.models[indexPath.row];
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.models.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier
                                                            forIndexPath:indexPath];
    id model = [self modelAtIndexPath:indexPath];
    self.configureCellBlock(cell, model);
    return cell;
}

@end

