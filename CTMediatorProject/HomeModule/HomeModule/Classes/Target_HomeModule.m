//
//  Target_HomeModule.m
//  HomeModule_Example
//
//  Created by luokan on 2020/12/11.
//  Copyright © 2020 kanluo91@yahoo.com. All rights reserved.
//

#import "Target_HomeModule.h"
#import "JJHomeViewController.h"

@implementation Target_HomeModule

-(UIViewController *) Action_getHomeVC:(id)obj{
    JJHomeViewController *homeVC = [JJHomeViewController new];
    return homeVC;
}

@end
