//
//  UIImage+ZAImage.m
//  自定义TabBarController
//
//  Created by 纵昂 on 2017/3/7.
//  Copyright © 2017年 纵昂. All rights reserved.
//

#import "UIImage+ZAImage.h"

@implementation UIImage (ZAImage)

+ (instancetype)imageWithOriginalName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

+ (instancetype)imageWithStretchableName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
}

@end
