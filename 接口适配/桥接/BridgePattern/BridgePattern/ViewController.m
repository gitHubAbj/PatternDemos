//
//  ViewController.m
//  BridgePattern
//
//  Created by Abj on 2019/4/10.
//  Copyright © 2019 Abj. All rights reserved.
//  参考:https://juejin.im/post/585729978e450a006c6e4a7e
//  参考:https://www.jianshu.com/p/af6b1b27f638

#import "ViewController.h"
#import "QQMessage.h"
#import "CommonMessage.h"
#import "MessageSMS.h"
#import "MessageTEL.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MessageSMS *sms = [[MessageSMS alloc] init];
    MessageTEL *tel = [[MessageTEL alloc] init];
    
    QQMessage *messageSMS = [[QQMessage alloc] initWithImplement:sms];
    [messageSMS send:[[NSMutableString alloc] initWithString:@"SMS->QQ"]];
    NSLog(@"\n");
    
    QQMessage *messageTEL = [[QQMessage alloc] initWithImplement:tel];
    [messageTEL send:[[NSMutableString alloc] initWithString:@"TEL->QQ"]];
    NSLog(@"\n");

    CommonMessage *commonSMS = [[CommonMessage alloc] initWithImplement:sms];
    [commonSMS send:[[NSMutableString alloc] initWithString:@"SMS->Common"]];
    NSLog(@"\n");

    CommonMessage *commonTEL = [[CommonMessage alloc] initWithImplement:tel];
    [commonTEL send:[[NSMutableString alloc] initWithString:@"TEL->Common"]];
}


@end
