//
//  UIViewController+RKFSNavigationViewController.m
//  RKFullScreenNavigationController
//
//  Created by mac on 20/08/18.
//

#import "UIViewController+RKFSNavigationViewController.h"



@implementation UIViewController (RKFSNavigationViewController)


- (void)setRk_stopRightSliderGesture:(BOOL)rk_stopRightSliderGesture{
    
    [self rk_SetAssociativeObject:@(rk_stopRightSliderGesture) forKey:@"rk_stopRightSliderGesture"];
}


- (BOOL)rk_stopRightSliderGesture{
    
    return [[self rk_AssociativeObjectForKey:@"rk_stopRightSliderGesture"] boolValue];
}

- (void)setRk_resetGestureViewController:(BOOL)rk_resetGestureViewController{
    
    [self rk_SetAssociativeObject:@(rk_resetGestureViewController) forKey:@"rk_resetGestureViewController"];
}

- (BOOL)rk_resetGestureViewController{
    
    return [[self rk_AssociativeObjectForKey:@"rk_resetGestureViewController"] boolValue];
}


- (void)setRk_resetGestureViewControllerClass:(Class)rk_resetGestureViewControllerClass{
    
    [self rk_SetAssociativeObject:rk_resetGestureViewControllerClass forKey:@"rk_resetGestureViewControllerClass"];
    
}

- (Class)rk_resetGestureViewControllerClass{
    
    return [self rk_AssociativeObjectForKey:@"rk_resetGestureViewControllerClass"];
    
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
