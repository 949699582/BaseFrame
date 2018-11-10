//
//  UIView+MGO.h
//  BaseFrame
//
//  Created by 949699582 on 2018/11/10.
//  Copyright © 2018年 zhq. All rights reserved.
//

#import <UIKit/UIKit.h>
IB_DESIGNABLE
@interface UIView (MGO)
@property(nonatomic,assign) IBInspectable CGFloat cornerRadius;
@property(nonatomic,assign) IBInspectable CGFloat borderWidth;
@property(nonatomic,assign) IBInspectable UIColor *borderColor;
@property(nonatomic,assign) IBInspectable CGFloat defineValue;

@end
