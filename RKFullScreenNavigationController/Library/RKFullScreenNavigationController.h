//
//  RKFullScreenNavigationController.h
//  RKFullScreenNavigationController
//
//  Created by mac on 20/08/18.
//

#import <UIKit/UIKit.h>
#import "RKScreenCaptureView.h"
#import "UIViewController+RKFSNavigationViewController.h"

typedef void(^AnimationCompletion)(NSArray *array);

typedef NS_ENUM(NSInteger , ShotViewAnimationType) {
    ShotViewAnimationTypeScale  = 0,//Scale
    ShotViewAnimationTypeSlider = 1,//Slider default
};

typedef NS_ENUM(NSInteger , PopViewControllerType){
    
    PopViewControllerTypeLastViewController = 0,
    PopViewControllerTypeToViewController   = 1,
    PopViewControllerTypeRootViewController = 2,
    
};

@interface RKFullScreenNavigationController : UINavigationController

/** Animation type Slider*/
@property (nonatomic, assign) ShotViewAnimationType shotViewAnimationType;

/** is MaskView enabled default NO */
@property (nonatomic, assign) BOOL hasMaskView;

/** Has shadow default  YES */
@property (nonatomic, assign) BOOL hasShawdow;

/** is turn on only slide gesture default  NO */
@property (nonatomic, assign) BOOL onlySideGesture;

/** slide guester pan distance default 80 */
@property (nonatomic, assign) CGFloat distanceLeft;

/** mask view Transparency value 0.4 */
@property (nonatomic, assign) CGFloat maskViewAlpha;

/** Scal level 0.95 suggest: 0.9 ~ 1.0*/
@property (nonatomic, assign) CGFloat scaleViewFloat;

/** Animation time for Push and Pop 0.3 */
@property (nonatomic, assign) CGFloat animationTime;

/** popViewController */
- (void)rk_popViewController;

/** popToViewController*/
- (void)rk_popToViewController:(UIViewController *)viewController completionBlock:(AnimationCompletion)animationCompletion;

/** popToRootViewControllerWithCompletion */
- (void)rk_popToRootViewControllerWithCompletionBlock:(AnimationCompletion)animationCompletion;

/** */
- (void)popAnimationWithPopViewControllerType:(PopViewControllerType)type toViewController:(UIViewController *)toViewController completionBlock:(AnimationCompletion)animationCompletion animated:(BOOL)animated;


@end
