//
//  ViewController.m
//  iAmRich
//
//  Created by TienVV on 9/25/15.
//  Copyright (c) 2015 TienVV. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgRuby;
@property (weak, nonatomic) IBOutlet UILabel *lbRich;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Default hide image Ruby and label
    self.imgRuby.alpha = 0;
    self.lbRich.alpha = 0;
}

- (void) viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    // Animate alpha of image Ruby in duration = 3 seconds
    [UIView animateWithDuration:3 animations:^{
        self.imgRuby.alpha = 1;
    } completion:^(BOOL finished) {
        // When image Ruby finished animate alpha then animate label "I Am Rich"
        // With duration = 3 seconds
        [UIView animateWithDuration:3 animations:^{
            // Animate position to bottom of image Ruby
            self.lbRich.center = CGPointMake(self.lbRich.center.x, self.imgRuby.center.y + self.imgRuby.frame.size.height / 2 + self.lbRich.frame.size.height / 2);
            // Animate alpha to 1
            self.lbRich.alpha = 1;
        } completion:nil];
    }];
    
    // Animate change background color in duration = 8 seconds
    [UIView animateWithDuration:8 animations:^{
        self.view.backgroundColor = [UIColor colorWithRed:255.0/225.0 green:110.0/225.0 blue:0.0 alpha:1.0];
    }];
}

@end
