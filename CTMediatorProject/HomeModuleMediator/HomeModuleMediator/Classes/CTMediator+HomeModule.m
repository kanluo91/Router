//
//  CTMediator+HomeModule.m
//  HomeModuleMediator_Example
//
//  Created by luokan on 2020/12/11.
//  Copyright © 2020 kanluo91@yahoo.com. All rights reserved.
//

#import "CTMediator+HomeModule.h"

@implementation CTMediator (HomeModule)

-(UIViewController *) HomeModule_getHomeViewController{
    return [self performTarget:@"HomeModule" action:@"getHomeVC" params:nil shouldCacheTarget:NO];
}

@end
