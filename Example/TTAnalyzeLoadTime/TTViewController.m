//
//  TTViewController.m
//  TTAnalyzeLoadTime
//
//  Created by huakucha on 12/14/2018.
//  Copyright (c) 2018 huakucha. All rights reserved.
//

#import "TTViewController.h"
#import "TTLoadTime.h"

#import <objc/runtime.h>
#import <mach/mach.h>

@interface TTViewController ()

@end

@implementation TTViewController

+(void)load
{
    NSLog(@"TTViewController load");
}

+ (void)initialize
{
    NSLog(@"");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	printLoadCostsInfo();
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

@interface TTDemo:NSObject

@end

@implementation TTDemo

+(void)load
{
    NSLog(@"TTDemo load");
}

@end
