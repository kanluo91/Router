//
//  JJViewController.m
//  HomeModule
//
//  Created by kanluo91@yahoo.com on 12/11/2020.
//  Copyright (c) 2020 kanluo91@yahoo.com. All rights reserved.
//

#import "JJViewController.h"
#import "JJHomeViewController.h"

@interface JJViewController ()

@end

@implementation JJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    JJHomeViewController *homeVC = [JJHomeViewController new
                                    ];
    [self presentViewController:homeVC animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
