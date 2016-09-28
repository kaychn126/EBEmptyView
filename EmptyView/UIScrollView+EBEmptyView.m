//
//  UIScrollView+EBEmptyView.m
//  BadgeProject
//
//  Created by EasyBenefit on 16/5/6.
//  Copyright © 2016年 EasyBenefit. All rights reserved.
//

#import "UIScrollView+EBEmptyView.h"
#import <objc/runtime.h>

#define kEmptyImageWidth 120
#define kEmptyImageHeight 120

static char kAssociatedEmptyViewKey;

@implementation UIScrollView (EBEmptyView)
@dynamic ezb_emptyView;

- (void)setEzb_emptyView:(EBEmptyView *)ezb_emptyView{
    if (ezb_emptyView != self.ezb_emptyView) {
        [self.ezb_emptyView removeFromSuperview];
        if (ezb_emptyView) {
            [self addSubview:ezb_emptyView];
        }
        objc_setAssociatedObject(self, &kAssociatedEmptyViewKey, ezb_emptyView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

- (EBEmptyView*)ezb_emptyView{
    return objc_getAssociatedObject(self, &kAssociatedEmptyViewKey);
}

//显示默认空白页
- (void)ezb_showDefaultEmptyView:(BOOL)show{
    [self ezb_showEmptyView:show withImage:@"emptyImage" withText:nil];
}

- (void)ezb_showEmptyView:(BOOL)show withText:(NSString*)emptyText{
    [self ezb_showEmptyView:show withImage:@"emptyImage" withText:emptyText];
}

- (void)ezb_showEmptyView:(BOOL)show withImage:(NSString *)emptyImage withText:(NSString*)emptyText{
    if (show) {
        EBEmptyView *emptyView = [[EBEmptyView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 300)];
        [emptyView.emptyImageView setImage:[UIImage imageNamed:emptyImage]];
        emptyView.emptyLabel.text = emptyText;
        [self setEzb_emptyView:emptyView];
    }else {
        [self setEzb_emptyView:nil];
    }
}
@end

@implementation EBEmptyView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        _emptyImageView = [[UIImageView alloc] init];
        _emptyImageView.frame = CGRectMake((frame.size.width-kEmptyImageWidth)/2, (frame.size.height-kEmptyImageHeight)/2, kEmptyImageWidth, kEmptyImageHeight);
        _emptyImageView.contentMode = UIViewContentModeScaleAspectFit;
        [self addSubview:_emptyImageView];
        
        _emptyLabel = [[UILabel alloc] init];
        _emptyLabel.backgroundColor = [UIColor clearColor];
        _emptyLabel.font = [UIFont systemFontOfSize:16];
        _emptyLabel.textColor = [UIColor colorWithRed:178.0/255.0 green:178.0/255.0 blue:178.0/255.0 alpha:1];
        _emptyLabel.numberOfLines = 0;
        _emptyLabel.lineBreakMode = NSLineBreakByCharWrapping;
        _emptyLabel.textAlignment = NSTextAlignmentCenter;
        _emptyLabel.frame = CGRectMake(30, _emptyImageView.frame.origin.y+_emptyImageView.frame.size.height, frame.size.width-60, 36);
        [self addSubview:_emptyLabel];
    }
    return self;
}

@end