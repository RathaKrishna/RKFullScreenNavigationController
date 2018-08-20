//
//  UIViewController+RKFSNavigationViewController.h
//  RKFullScreenNavigationController
//
//  Created by mac on 20/08/18.
//

#import <UIKit/UIKit.h>
#import "NSObject+RKAddition.h"

@interface UIViewController (RKFSNavigationViewController)

/** Is right slide gesture enabled ? default : NO */
@property (nonatomic, assign) BOOL rk_stopRightSliderGesture;

/** If the reset gesture is not enabled, the default value  can be set */
@property (nonatomic, assign) BOOL rk_resetGestureViewController;

/** Reset the gesture for slide back to the previous controller.  */
@property (nonatomic, assign) Class rk_resetGestureViewControllerClass;



@end
