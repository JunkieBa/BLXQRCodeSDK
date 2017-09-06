//
//  BLXQRCodeSDKViewController.m
//  BLXQRCodeSDK
//
//  Created by JunkieBa on 09/06/2017.
//  Copyright (c) 2017 JunkieBa. All rights reserved.
//

#import "BLXQRCodeSDKViewController.h"
#import "BLXQRCodeSDK.h"
#import "Masonry.h"
@interface BLXQRCodeSDKViewController ()
@property (nonatomic, strong) BLXQRCodeSDK *qrCodeSDK;
@end

@implementation BLXQRCodeSDKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.translucent = NO;
    UIButton *scanButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [scanButton setTitle:@"扫一扫" forState:UIControlStateNormal];
    [scanButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [scanButton addTarget:self action:@selector(scanButtonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:scanButton];
    [scanButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(@100);
        make.top.equalTo(@100);
        make.size.mas_equalTo(CGSizeMake(80, 80));
    }];
    BLXQRCodeConfig *config = [[BLXQRCodeConfig alloc] init];
    config.controller = self;
    self.qrCodeSDK = [[BLXQRCodeSDK alloc] initWithConfigure:config delegate:self];
    
}

-(void)scanButtonClicked{
    [_qrCodeSDK gotoScanCodeView];
}



@end
