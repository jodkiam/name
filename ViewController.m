//
//  ViewController.m
//  Testac
//
//  Created by kdnet on 16/3/1.
//  Copyright © 2016年 Tooci. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>

@property (nonatomic,strong) UIWebView * webView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView =  [[UIWebView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:self.webView];

    self.webView.backgroundColor = [UIColor redColor];
//    self.webView.delegate =self;
//    [self.webView loadData:@"http://qzonestyle.gtimg.cn/open/qcloud/video/flash/video_player.swf?swfv=beta1&auto_play=0&file_id=14651978969256305431&app_id=1251771739&version=1" MIMEType:nil textEncodingName:nil baseURL:nil];
//    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://qzonestyle.gtimg.cn/open/qcloud/video/flash/video_player.swf?swfv=beta1&auto_play=0&file_id=14651978969256305431&app_id=1251771739&version=1"]]];
    NSString * path = [[NSBundle mainBundle]pathForResource:@"test2" ofType:@"html"];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL fileURLWithPath:path]]];
//    [self.webView loadHTMLString:@"" baseURL:nil];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
