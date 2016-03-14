//
//  UserViewController.m
//  HHRouterExample
//
//  Created by Light on 14-3-14.
//  Copyright (c) 2014年 Huohua. All rights reserved.
//

#import "UserViewController.h"
#import "HHRouter.h"

@interface UserViewController ()

@end

@implementation UserViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIViewController *viewController = [[HHRouter shared] matchController:@"storyView" userInfo:@{@"userId":@"121212"}];
    NSLog(@"params:%@",[viewController.params objectForKey:TFParameterUserInfo]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
