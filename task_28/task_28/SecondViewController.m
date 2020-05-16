//
//  SecondViewController.m
//  task_28
//
//  Created by Admin on 31.03.16.
//  Copyright © 2016 Orest Kashchiy. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (weak, nonatomic) IBOutlet UILabel *percentLabel;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

//    UILabel *progressLabel = [[UILabel alloc] init];
//    [progressLabel setTextColor:[UIColor whiteColor]];
//    [progressLabel setText:@"100"];
    
    CABasicAnimation* animation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    animation.duration = 10.5f;
    animation.repeatCount = 1.f;
    animation.fromValue = [NSNumber numberWithFloat:0.0f];
    animation.toValue = [NSNumber numberWithFloat:1.0f];
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(self.view.center.x - 50, self.view.center.y - 50, 100., 100.)];
    
    CAShapeLayer *progressLayer = [[CAShapeLayer alloc] init];
    [progressLayer setPath:bezierPath.CGPath];
    [progressLayer setStrokeColor:[UIColor colorWithRed:147/255.0 green:136/255.0 blue:236/255.0 alpha:0.5].CGColor];
    [progressLayer setFillColor:[UIColor clearColor].CGColor];
    [progressLayer setLineWidth:0.015 * self.view.bounds.size.width];
    [progressLayer addAnimation:animation forKey:@"strokeEnd"];
    
    [self.view.layer addSublayer:progressLayer];

    //
    float animationPeriod = 10;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        for (int i = 1; i < 101; i ++) {
            usleep(animationPeriod/100 * 1000000);
            dispatch_async(dispatch_get_main_queue(), ^{
                self.percentLabel.text = [NSString stringWithFormat:@"%d", i];
            });
        }
    });


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
