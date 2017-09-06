//
//  BLXQRCodeSDK.m
//  Pods
//
//  Created by alisa on 2017/9/6.
//
//

#import "BLXQRCodeSDK.h"
#import "BLXQRCodeConfig.h"
#import "LXQRCodeSDKViewController.h"

@interface BLXQRCodeSDK ()
@property (nonatomic, strong) BLXQRCodeConfig *configure;
@property (nonatomic, weak) id<BLXQRCodeSDKDelegate> delegate;
@end

@implementation BLXQRCodeSDK
- (instancetype)initWithConfigure:(BLXQRCodeConfig*)configure delegate:(id<BLXQRCodeSDKDelegate>)delegete
{
    self = [super init];
    if (self) {
        self.configure = configure;
        self.delegate = delegete;
    }
    return self;
}
-(void)gotoScanCodeView{
    LXQRCodeSDKViewController *scanVC = [[LXQRCodeSDKViewController alloc] init];
    [self.configure.controller.navigationController pushViewController:scanVC animated:YES];
}
@end
