//
//  MainViewController.m
//  week4_2
//
//  Created by Phurbu Dolma on 6/26/14.
//  Copyright (c) 2014 Phurbu Dolma. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *ContentScrollView;
@property (weak, nonatomic) IBOutlet UIImageView *background;
@property (weak, nonatomic) UIImageView *newCat;


- (IBAction)onDoubleTap:(UITapGestureRecognizer *)sender;
- (void)scrollViewDidScroll:(UIScrollView *)scrollView;
- (void)onPan:(UIGestureRecognizer *) panGesture;

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    self.ContentScrollView.
    contentSize =
    CGSizeMake(320, 900);

    self.ContentScrollView.delegate = self;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onDoubleTap:(UITapGestureRecognizer *)sender {
    UIImageView*imageView=[[UIImageView alloc] initWithFrame:self.background.frame];
    imageView.image =[UIImage imageNamed:@"cat"];
    imageView.frame = CGRectMake(20, 20, 50, 50);
    [self.view addSubview:imageView];
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(onPan:)];
    [self.view addGestureRecognizer:pan];
  //  self.catView.alpha =1
    
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView;{
    self.background.frame = CGRectMake(0,self.ContentScrollView.contentOffset.y*-0.2,self.background.frame.size.width, self.background.frame.size.height);
    
}

- (void)onPan:(UIGestureRecognizer *) panGesture {
    
    CGPoint loc = [panGesture locationInView:self.view];
    NSLog(@"SCROll %@", NSStringFromCGPoint(loc));
    
}


@end
