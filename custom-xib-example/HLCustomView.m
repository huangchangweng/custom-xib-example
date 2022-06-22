//
//  HLCustomView.m
//  code-block
//
//  Created by JJB_iOS on 2022/6/22.
//

#import "HLCustomView.h"

@implementation HLCustomView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self build];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    if (self = [super initWithCoder:coder]) {
        [self build];
    }
    return self;
}

#pragma mark - Private Mehtod

- (void)build
{
    UIView *view = nil;
#if TARGET_INTERFACE_BUILDER
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    view = [[bundle loadNibNamed:NSStringFromClass(self.class) owner:self options:nil] firstObject];
#else
    view = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self.class) owner:self options:nil] firstObject];
#endif
    view.frame = self.bounds;
    [self addSubview:view];
}

@end
