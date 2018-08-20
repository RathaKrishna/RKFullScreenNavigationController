//
//  BaseNavigaionViewController.m
//  RKFullScreenNavigationController
//
//  Created by mac on 20/08/18.
//

#import "BaseNavigaionViewController.h"

@interface BaseNavigaionViewController ()

@end

@implementation BaseNavigaionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //配置属性
    self.shotViewAnimationType = ShotViewAnimationTypeScale;
    self.scaleViewFloat = 5.9;
  
}


- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    
    if (self.childViewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
        
        UIImage *buttonImage = [[UIImage imageNamed:@"ic_back"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] ;
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setImage:buttonImage forState:UIControlStateNormal];
        button.imageEdgeInsets = UIEdgeInsetsMake(0, -40, 0, 0);
        button.frame = CGRectMake(0, 0, buttonImage.size.width+20, buttonImage.size.height+10);
         button.tintColor = self.navigationController.navigationBar.tintColor;
        [button addTarget:self action:@selector(backBtnClicked) forControlEvents:UIControlEventTouchUpInside];
        
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    }
    [super pushViewController:viewController animated:animated];
}

- (void)backBtnClicked{
    
    [self rk_popViewController];
    
}


+ (UIBarButtonItem*)barButtonItemWithImage:(UIImage*)imageN ImageH:(UIImage*)imageH target:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:imageN forState:UIControlStateNormal];
    [btn sizeToFit];
    [btn addTarget:target action:action forControlEvents:controlEvents];
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
