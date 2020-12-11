//
//  JJViewController.m
//  CommonUtils
//
//  Created by kanluo91@yahoo.com on 12/11/2020.
//  Copyright (c) 2020 kanluo91@yahoo.com. All rights reserved.
//

#import "JJViewController.h"
#import <CommonUtils/UIView+Layout.h>

@interface JJViewController ()

@end

@implementation JJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"%f  %f  %f   %f \n",self.view.left,self.view.top,self.view.width,self.view.height);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
