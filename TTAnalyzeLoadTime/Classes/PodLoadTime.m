//
//  PodLoadTime.m
//  TTAnalyzeLoadTime
//
//  Created by huakucha on 2018/12/14.
//

#import "PodLoadTime.h"

@implementation PodLoadTime

+(void)load
{
    NSLog(@"PodLoadTime");
}

@end


@interface PodLoadTime (LoadTimer)

@end

@implementation PodLoadTime (LoadTimer)

+(void)load
{
    NSLog(@"PodLoadTime (LoadTimer) load");
}

@end

