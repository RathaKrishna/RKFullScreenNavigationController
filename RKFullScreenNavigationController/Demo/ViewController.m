//
//  ViewController.m
//  RKFullScreenNavigationController
//
//  Created by mac on 20/08/18.
//

#import "ViewController.h"
#import "DetailViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self initView];
}

- (void)initView
{
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(20, (screenHeight/2)-40, 70, 40)];
    [btn setTitle:@"Push" forState:UIControlStateNormal];
    btn.backgroundColor = mainColor;
    [self.view addSubview:btn];
    
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
}

- (void)push
{
    [self.navigationController pushViewController:[DetailViewController new] animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
