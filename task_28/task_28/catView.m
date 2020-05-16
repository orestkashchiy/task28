//
//  catView.m
//  task_28
//
//  Created by Admin on 29.03.16.
//  Copyright © 2016 Orest Kashchiy. All rights reserved.
//

#import "catView.h"

@implementation catView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        self.catLayer = [[CALayer alloc] init];
        [self.catLayer setBounds:CGRectMake(0, 0, 85, 85)];
        [self.catLayer setPosition:CGPointMake(160, 160)];
        [self.catLayer setZPosition:0.0];
        
        UIImage *catImage = [UIImage imageNamed:@"cat1.png"];
        CGImageRef image = [catImage CGImage];
        [self.catLayer setContents:(__bridge id)image];
        [self.catLayer setContentsRect:CGRectMake(-0.1, -0.1, 1.2, 1.2)];
        [self.catLayer setContentsGravity:kCAGravityResizeAspect];
        
        [[self layer]addSublayer:self.catLayer];
        
    }
    return self;
}

@end
