//
//  RKScreenCaptureView.m
//  RKFullScreenNavigationController
//
//  Created by mac on 20/08/18.
//

#import "RKScreenCaptureView.h"

@implementation RKScreenCaptureView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor blackColor];
        self.imgView = [[UIImageView alloc]initWithFrame:self.bounds];
        self.maskView = [[UIView alloc]initWithFrame:self.bounds];
        self.maskView.backgroundColor = [UIColor colorWithHue:0 saturation:0 brightness:0 alpha:0.4];
        
        [self addSubview:self.imgView];
        [self addSubview:self.maskView];
    }
    return self;
}

+ (instancetype)shareInstance{
    static RKScreenCaptureView *__instance;
    static dispatch_once_t onceToken;
    if (![[UIApplication sharedApplication] delegate].window) return nil;
    dispatch_once(&onceToken, ^{
        __instance = [[RKScreenCaptureView alloc]initWithFrame:[UIScreen mainScreen].bounds];
        __instance.arrayScreenShots = [NSMutableArray array];
        [[[UIApplication sharedApplication] delegate].window insertSubview:__instance atIndex:0];
        
    });
    return __instance;
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
