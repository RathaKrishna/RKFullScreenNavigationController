//
//  AppDelegate.m
//  RKFullScreenNavigationController
//
//  Created by mac on 20/08/18.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SecondViewController.h"

#import "BaseNavigaionViewController.h"



@interface AppDelegate ()
{
    BaseNavigaionViewController * nav1;
    BaseNavigaionViewController * nav2;
    
}
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self initRootVC];
    return YES;
}

- (void)initRootVC {
    
    UINavigationBar *navigationBar = [UINavigationBar appearance];
    navigationBar.tintColor = mainColor;
    navigationBar.barTintColor = [UIColor whiteColor];
    [navigationBar setTranslucent:YES];
    
    ViewController *VC1 = [[ViewController alloc] init];
    nav1 = [[BaseNavigaionViewController alloc] initWithRootViewController:VC1];
    
    SecondViewController *VC2 = [[SecondViewController alloc] init];
    nav2 = [[BaseNavigaionViewController alloc] initWithRootViewController:VC2];
  
    
    VC1.title = @"First";
    VC2.title = @"Second";
    
    
    NSArray *viewCtrs = @[nav1,nav2];
    UITabBarController *rootTabbarCtr  = [[UITabBarController alloc] init];


    [rootTabbarCtr setViewControllers:viewCtrs animated:YES];
    self.window.rootViewController = rootTabbarCtr;
  
    UITabBar *tabbar = rootTabbarCtr.tabBar;
    UITabBarItem *item1 = [tabbar.items objectAtIndex:0];
    UITabBarItem *item2 = [tabbar.items objectAtIndex:1];
    tabbar.tintColor = mainColor;
    
    item1.selectedImage = [[UIImage imageNamed:@"ic_tabbar_home_pressed"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    item1.image = [[UIImage imageNamed:@"ic_tabbar_home_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item2.selectedImage = [[UIImage imageNamed:@"ic_tabbar_profile_pressed"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    item2.image = [[UIImage imageNamed:@"ic_tabbar_profile_normal"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
   
     [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:mainColor,NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
