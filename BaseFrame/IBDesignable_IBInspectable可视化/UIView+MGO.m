//
//  UIView+MGO.m
//  BaseFrame
//
//  Created by 949699582 on 2018/11/10.
//  Copyright © 2018年 zhq. All rights reserved.
//

#import "UIView+MGO.h"
#import <objc/runtime.h>
@implementation UIView (MGO)

-(void)setCornerRadius:(CGFloat)cornerRadius{
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = cornerRadius;
}
-(void)setBorderColor:(UIColor *)borderColor{
    self.layer.borderColor = borderColor.CGColor;
}
-(void)setBorderWidth:(CGFloat)borderWidth{
    self.layer.borderWidth = borderWidth;
}
-(void)setDefineValue:(CGFloat)defineValue{
    objc_setAssociatedObject(self, @selector(defineValue), @(defineValue),OBJC_ASSOCIATION_ASSIGN);
}
-(CGFloat)cornerRadius{
    return self.layer.cornerRadius;
}
-(CGFloat)borderWidth{
    return self.layer.borderWidth;
}
-(UIColor *)borderColor{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}
-(CGFloat)defineValue{
    return [objc_getAssociatedObject(self, @selector(defineValue)) floatValue];
}


@end
