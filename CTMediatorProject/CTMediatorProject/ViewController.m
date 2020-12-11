//
//  ViewController.m
//  CTMediatorProject
//
//  Created by luokan on 2020/12/11.
//

#import "ViewController.h"
#import <HomeModuleMediator/CTMediator+HomeModule.h>
#import <HomeModule/JJHomeViewController.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    id vc = [[CTMediator sharedInstance] HomeModule_getHomeViewController];
    if([vc isKindOfClass:[UIViewController class]]){
        [self presentViewController:vc animated:YES completion:nil];
    }
}

@end
