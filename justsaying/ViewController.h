//
//  ViewController.h
//  justsaying
//
//  Created by Kamila Wojciechowska on 14.01.2015.
//  Copyright (c) 2015 silk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPageViewControllerDataSource>

@property (weak, nonatomic) IBOutlet UIButton *startCarousel;
@property (strong, nonatomic) UIPageViewController *pageController;
@property (strong, nonatomic) NSArray *pageSayings;

@end

