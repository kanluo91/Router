//
//  JJHomeViewController.m
//  HomeModule_Example
//
//  Created by luokan on 2020/12/11.
//  Copyright © 2020 kanluo91@yahoo.com. All rights reserved.
//

#import "JJHomeViewController.h"
#import <Masonry/Masonry.h>

@interface JJHomeViewController ()

@property (nonatomic,strong) UILabel *descLable;

@end

@implementation JJHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    
    [self.view addSubview:self.descLable];
    self.descLable.text = @"我是首页";
    
    [self.descLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(200);
        make.height.mas_equalTo(100);
        make.centerY.centerX.equalTo(self.view);
    }];
}

-(UILabel *)descLable{
    if(!_descLable){
        _descLable = [UILabel new];
        _descLable.backgroundColor = [UIColor yellowColor];
        _descLable.textAlignment = NSTextAlignmentCenter;
    }
    return _descLable;
}



@end
