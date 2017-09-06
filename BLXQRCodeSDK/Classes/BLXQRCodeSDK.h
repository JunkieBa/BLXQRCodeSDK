//
//  BLXQRCodeSDK.h
//  Pods
//
//  Created by alisa on 2017/9/6.
//
//

#import <Foundation/Foundation.h>
#import "BLXQRCodeConfig.h"

@protocol BLXQRCodeSDKDelegate <NSObject>
@optional

@end

@interface BLXQRCodeSDK : NSObject

-(void)gotoScanCodeView;

- (instancetype)initWithConfigure:(BLXQRCodeConfig*)configure delegate:(id<BLXQRCodeSDKDelegate>)delegete;
@end
