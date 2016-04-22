//
//  OZTableViewCell.m
//  CleanTableView
//
//  Created by Zhanghua on 16/4/22.
//  Copyright © 2016年 OlivierZhang. All rights reserved.
//

#import "OZTableViewCell.h"

@interface OZTableViewCell ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation OZTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)fillWithModel:(OZModel *)model {
    self.label.text = model.text;
}

@end
