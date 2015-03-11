//
//  ViewController.m
//  justsaying
//
//  Created by Kamila Wojciechowska on 14.01.2015.
//  Copyright (c) 2015 silk. All rights reserved.
//

#import "ViewController.h"
#import "KWSayingViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pageSayings = @[@"Decide that you want it more than you are afraid of it.", @"The difference between who you are and who you want to be is what you do.", @"If that is what you fear, that is what you should do!", @"Thoughts design my energy. My thoughts will design the energy that moves me."];
    
    self.pageController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    self.pageController.dataSource = self;
    self.pageController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 30);
    KWSayingViewController *viewControllerObject = [self viewControllerAtIndex:0];
    NSArray *viewControllers = [NSArray arrayWithObject:viewControllerObject];
    [self.pageController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    [self addChildViewController:self.pageController];
    [[self view] addSubview:[self.pageController view]];
    [self.pageController didMoveToParentViewController:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIViewController *) pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    NSUInteger index = [(KWSayingViewController *)viewController pageIndex];
    
    if (index == 0) {
        return nil;
    }
    index--;
    
    return [self viewControllerAtIndex:index];
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    NSUInteger index = [(KWSayingViewController *)viewController pageIndex];
    index++;
    if (index == 4) {
        return nil;
    }
    return [self viewControllerAtIndex:index];
}


- (KWSayingViewController *)viewControllerAtIndex:(NSUInteger)index {
    
    if ([self.pageSayings count] == 0) {
        return nil;
    }
    
    // Create a new view controller and pass suitable data.
    KWSayingViewController *pageContentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"Saying View Controller"];
    pageContentViewController.sayingText = self.pageSayings[index];
    pageContentViewController.pageIndex = index;
    
    return pageContentViewController;
}


- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController {
    return [self.pageSayings count];
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController {
    return 0;
}


@end
