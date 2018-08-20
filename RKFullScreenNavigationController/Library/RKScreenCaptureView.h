//
//  RKScreenCaptureView.h
//  RKFullScreenNavigationController
//
//  Created by mac on 20/08/18.
//

#import <UIKit/UIKit.h>

@interface RKScreenCaptureView : UIView

/** Array of screen shot pictures*/
@property (nonatomic, strong) NSMutableArray *arrayScreenShots;
/** Container Image view*/
@property (nonatomic, strong) UIImageView *imgView;
/** Mask view*/
@property (nonatomic, strong) UIView *maskView;

+ (instancetype)shareInstance;

@end
