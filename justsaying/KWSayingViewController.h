//
//  KWSayingViewController.h
//  justsaying
//
//  Created by Kamila Wojciechowska on 14.01.2015.
//  Copyright (c) 2015 silk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KWSayingViewController : UIViewController
@property (assign, nonatomic) NSUInteger pageIndex;
@property (strong, nonatomic) NSString *sayingText;
@property (weak, nonatomic) IBOutlet UITextView *sayingTextView;
@property (weak, nonatomic) IBOutlet UIButton *goToStart;

@end
