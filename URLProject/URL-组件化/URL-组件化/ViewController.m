//
//  ViewController.m
//  URL-组件化
//
//  Created by luokan on 2020/12/18.
//

#import "ViewController.h"
#import <MGJRouter/MGJRouter.h>

@interface ViewController ()

@property (nonatomic,strong) UIButton *btn1;

@property (nonatomic,strong) UIButton *btn2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.btn1 = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.btn1 setTitle:@"注册URL" forState:UIControlStateNormal];
    self.btn1.backgroundColor = [UIColor yellowColor];
    [self.btn1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.btn1 addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
    self.btn2 = [[UIButton alloc] initWithFrame:CGRectMake(100, 300, 100, 100)];
    [self.btn2 setTitle:@"执行动作" forState:UIControlStateNormal];
    self.btn2.backgroundColor = [UIColor greenColor];
    [self.btn2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.btn2 addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    self.btn1.tag = 1;
    self.btn2.tag = 2;
    
    [self.view addSubview:self.btn1];
    [self.view addSubview:self.btn2];
}

-(void) btnAction:(UIButton *)sender{
    
    
    switch (sender.tag) {
        case 1:
            [MGJRouter registerURLPattern:@"qihoo://detail" toHandler:^(NSDictionary *routerParameters) {
                NSLog(@"匹配到了 ==  %@\n",routerParameters);
            }];
            
            
            [MGJRouter registerURLPattern:@"qihoo://channel" toObjectHandler:^id(NSDictionary *routerParameters) {
                
                return @"我是返回的对象";
            }];
            
            
            [MGJRouter registerURLPattern:@"qihoo://home" toObjectHandler:^id(NSDictionary *routerParameters) {
                // 模拟 push 一个 VC
                  dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.25 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                      void (^completion)(void) = routerParameters[MGJRouterParameterCompletion];
                      if (completion) {
                          completion();
                      }
                  });
                return @"我是返回的对象";
            }];
            
            break;
        case 2:
        {
             
            
            // 简单跳转
//            [MGJRouter openURL:@"qihoo://detail?vid=1"];
            
            // 带userinfo  并且有回调complection
//             [MGJRouter openURL:@"qihoo://channel?vid=1" withUserInfo:@{@"abc":@"eft"} completion:^(id result) {
//
//            }];
            
                NSString * objt = [MGJRouter objectForURL:@"qihoo://home?vid=1"];
                
                NSLog(@"openUrl  %@\n",objt);
    }
            break;
            
        default:
            break;
    }
    
    
}


@end
 
