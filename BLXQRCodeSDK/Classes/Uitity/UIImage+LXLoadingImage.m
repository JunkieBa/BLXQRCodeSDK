//
//  UIImage+LXLoadingImage.m
//  Pods
//
//  Created by alisa on 2017/9/4.
//
//

#import "UIImage+LXLoadingImage.h"

@implementation UIImage (LXLoadingImage)
+ (UIImage *)lx_imageNamed:(NSString *)imageName{
    NSBundle *bundle = [NSBundle bundleForClass:NSClassFromString(@"BLXQRCodeSDK")];
    CGFloat systemVerison = [[[UIDevice currentDevice]systemVersion]floatValue];
    UIImage *image;
    if (systemVerison < 8.0f) {
        NSString *iOS7ImageName = [NSString stringWithFormat:@"%@%@",imageName,@"@2x"];
        NSString *string = [bundle pathForResource:iOS7ImageName ofType:@"png"];
        image = [[UIImage alloc]initWithContentsOfFile:string];
    } else {
        NSString *iOS8ImageName = [NSString stringWithFormat:@"%@/%@",@"BLXQRCodeSDK.bundle",imageName];
        image = [UIImage imageNamed:iOS8ImageName inBundle:bundle compatibleWithTraitCollection:nil];
    }
    return image;
}
@end
