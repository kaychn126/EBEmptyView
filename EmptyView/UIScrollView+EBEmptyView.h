//
//  UIScrollView+EBEmptyView.h
//  BadgeProject
//
//  Created by EasyBenefit on 16/5/6.
//  Copyright © 2016年 EasyBenefit. All rights reserved.
//

#import <UIKit/UIKit.h>
@class EBEmptyView;
@interface UIScrollView (EBEmptyView)
@property(nonatomic, strong)EBEmptyView *ezb_emptyView;

- (void)ezb_showDefaultEmptyView:(BOOL)show;

- (void)ezb_showEmptyView:(BOOL)show withText:(NSString*)emptyText;

- (void)ezb_showEmptyView:(BOOL)show withImage:(NSString *)emptyImage withText:(NSString*)emptyText;
@end

@interface EBEmptyView : UIView
@property(nonatomic, strong)UIImageView *emptyImageView;
@property(nonatomic, strong)UILabel *emptyLabel;
@end