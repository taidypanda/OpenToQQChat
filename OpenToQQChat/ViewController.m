//
//  ViewController.m
//  OpenToQQChat
//
//  Created by 苹果 on 16/5/25.
//  Copyright © 2016年 苹果. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)goPikachu:(id)sender {
    // 空白的webview
    UIWebView * webView = [[UIWebView alloc] initWithFrame:CGRectZero];
    //貌似现在这个不能用了
    //    NSString * str = [NSString stringWithFormat:@"http://wpa.qq.com/msgrd?v=3&uin=%@&site=qq&menu=yes", @"742308143"];
    //记得plist文件里面要添加信任列表.
    NSString * string = @"mqq://im/chat?chat_type=wpa&uin=742308143&version=1&src_type=web";
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:string]]];
    [self.view addSubview:webView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
