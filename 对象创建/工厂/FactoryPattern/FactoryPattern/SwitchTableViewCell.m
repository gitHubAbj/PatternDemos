//
//  SwitchTableViewCell.m
//  FactoryPattern
//
//  Created by Abj on 2018/12/16.
//  Copyright © 2018 Abj. All rights reserved.
//

#import "SwitchTableViewCell.h"

@interface SwitchTableViewCell ()

@property (nonatomic, strong) UISwitch *dataSwitch;

@end

@implementation SwitchTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.dataSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(100, 20, 30, 30)];
        [self.contentView addSubview:self.dataSwitch];
    }
    return self;
}

- (void)setSwitchSelect:(BOOL)switchSelect {
    self.dataSwitch.selected = switchSelect;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
