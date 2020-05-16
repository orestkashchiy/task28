//
//  ViewController.m
//  task_28
//
//  Created by Admin on 29.03.16.
//  Copyright © 2016 Orest Kashchiy. All rights reserved.
//

#import "ViewController.h"
#import "QuartzCore/QuartzCore.h"
#import "catView.h"

@interface ViewController ()

@property (assign, nonatomic) CGRect startFrame;
@property (assign, nonatomic) CGRect startFrame2;
@property (assign, nonatomic) CGRect startFrame3;
@property (assign, nonatomic) CGRect startFrame4;
@property (assign, nonatomic) CGRect startFrame5;
@property (assign, nonatomic) CGRect endFrame;

@property (assign, nonatomic) BOOL isAtStart;
@property (assign, nonatomic) BOOL isAtStart2;
@property (assign, nonatomic) BOOL isAtStart3;
@property (assign, nonatomic) BOOL isAtStart4;
@property (assign, nonatomic) BOOL isAtStart5;


@property (assign, nonatomic) BOOL isOnView;
@property (assign, nonatomic) BOOL isOnView2;
@property (assign, nonatomic) BOOL isOnView3;
@property (assign, nonatomic) BOOL isOnView4;
@property (assign, nonatomic) BOOL isOnView5;

@property (assign, nonatomic) CGPoint position;

@property (strong, nonatomic) NSMutableArray *arrayOfLayers;
@property (strong, nonatomic) NSMutableArray *arrayOfAtStart;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.arrayOfLayers = [NSMutableArray new];
    self.arrayOfAtStart =[NSMutableArray new];
    
    self.isAtStart = YES;
    self.isOnView = NO;
    
    self.isAtStart2 = YES;
    self.isOnView2 = NO;
    
    self.isAtStart3 = YES;
    self.isOnView3 = NO;
    
    self.isAtStart4 = YES;
    self.isOnView4 = NO;
    
    self.isAtStart5 = YES;
    self.isOnView5 = NO;
    
   // [self.arrayOfAtStart addObject:self.isAtStart];
    
    self.endFrame = CGRectMake(0,0,210 , 210);
   
   
    
    self.catLayer = [[CALayer alloc] init];
      self.catLayer2 = [[CALayer alloc] init];
    self.catLayer3 = [[CALayer alloc] init];
    self.catLayer4 = [[CALayer alloc] init];
    self.catLayer5 = [[CALayer alloc] init];
    
    [self.arrayOfLayers addObject:self.catLayer];
    [self.arrayOfLayers addObject:self.catLayer2];

    [self.arrayOfLayers addObject:self.catLayer3];

    [self.arrayOfLayers addObject:self.catLayer4];
    [self.arrayOfLayers addObject:self.catLayer5];



    
    
   }

- (void) viewWillAppear:(BOOL)animated {
    
        CABasicAnimation *fadeAnim=[CABasicAnimation animationWithKeyPath:@"opacity"];
        fadeAnim.fromValue=[NSNumber numberWithDouble:1.0];
        fadeAnim.toValue=[NSNumber numberWithDouble:0.0];
        fadeAnim.duration = 3;
        fadeAnim.repeatCount = 1;
       // fadeAnim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
        [self.catLayer3 addAnimation:fadeAnim forKey:@"opacity"];
    
    
    CABasicAnimation* animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    [animation setDuration:2.0];
    [animation setRepeatCount:INT_MAX];
    [animation setFromValue:[NSNumber numberWithFloat:0] ];
    [animation setToValue:[NSNumber numberWithFloat:M_PI * 2.0]];
    [self.catLayer2 addAnimation:animation forKey:@"transform.rotation"];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
   CGPoint p = [(UITouch *)[touches anyObject] locationInView:self.view];
    if (!self.isOnView) {
        UIImage *catImage = [UIImage imageNamed:@"cat1.png"];
        CGImageRef image = [catImage CGImage];
        [self.catLayer setContents:(__bridge id)image];
        [self.catLayer setContentsGravity:kCAGravityResizeAspect];
        [self.catLayer setBounds:CGRectMake(p.x, p.y, 85, 85)];
        [self.catLayer setPosition:CGPointMake(p.x, p.y)];

        self.startFrame = CGRectMake(p.x, p.y, 85, 85);
        [[self.view layer]addSublayer:self.catLayer];
        self.isOnView = YES;
    } else if (!self.isOnView2) {
        UIImage *catImage2 = [UIImage imageNamed:@"cat2.png"];
        CGImageRef image2 = [catImage2 CGImage];
        [self.catLayer2 setContents:(__bridge id)image2];
        [self.catLayer2 setContentsGravity:kCAGravityResizeAspect];
        [self.catLayer2 setBounds:CGRectMake(p.x, p.y, 85, 85)];
        [self.catLayer2 setPosition:CGPointMake(p.x, p.y)];
        
        self.startFrame2 = CGRectMake(p.x, p.y, 85, 85);
        [[self.view layer]addSublayer:self.catLayer2];
        self.isOnView2 = YES;

    } else if (!self.isOnView3) {
        UIImage *catImage3 = [UIImage imageNamed:@"cat3.png"];
        CGImageRef image3 = [catImage3 CGImage];
        [self.catLayer3 setContents:(__bridge id)image3];
        [self.catLayer3 setContentsGravity:kCAGravityResizeAspect];
        [self.catLayer3 setBounds:CGRectMake(p.x, p.y, 85, 85)];
        [self.catLayer3 setPosition:CGPointMake(p.x, p.y)];
        
        self.startFrame3 = CGRectMake(p.x, p.y, 85, 85);
        [[self.view layer]addSublayer:self.catLayer3];
        self.isOnView3 = YES;
    
    } else if (!self.isOnView4) {
        UIImage *catImage4 = [UIImage imageNamed:@"cat4.png"];
        CGImageRef image4 = [catImage4 CGImage];
        [self.catLayer4 setContents:(__bridge id)image4];
        [self.catLayer4 setContentsGravity:kCAGravityResizeAspect];
        [self.catLayer4 setBounds:CGRectMake(p.x, p.y, 85, 85)];
        [self.catLayer4 setPosition:CGPointMake(p.x, p.y)];
        
        self.startFrame4 = CGRectMake(p.x, p.y, 85, 85);
        [[self.view layer]addSublayer:self.catLayer4];
        self.isOnView4 = YES;
   
    } else if (!self.isOnView5) {
        UIImage *catImage5 = [UIImage imageNamed:@"cat5.png"];
        CGImageRef image5 = [catImage5 CGImage];
        [self.catLayer5 setContents:(__bridge id)image5];
        [self.catLayer5 setContentsGravity:kCAGravityResizeAspect];
        [self.catLayer5 setBounds:CGRectMake(p.x, p.y, 85, 85)];
        [self.catLayer5 setPosition:CGPointMake(p.x, p.y)];
        
        self.startFrame5 = CGRectMake(p.x, p.y, 85, 85);
        [[self.view layer]addSublayer:self.catLayer5];
        self.isOnView5 = YES;
        
    }
    
//    CGPoint p = [(UITouch *)[touches anyObject] locationInView:self.view];
//    UITouch *touch = [touches anyObject];
//   
//   CGPoint p = [(UITouch *)[touches anyObject] locationInView:self.view];
//     CALayer *layer = [[CALayer alloc] init];
//    layer = [self.view.layer.presentationLayer hitTest:[self.view.layer convertPoint:p fromLayer:layer]];
//    
//    
//    if (layer == self.view.layer.presentationLayer) {
//        
//    
//    if (!self.isOnView) {
//        UIImage *catImage = [UIImage imageNamed:@"cat1.png"];
//        CGImageRef image = [catImage CGImage];
//        [self.catLayer setContents:(__bridge id)image];
//        [self.catLayer setContentsGravity:kCAGravityResizeAspect];
//        [self.catLayer setBounds:CGRectMake(p.x, p.y, 85, 85)];
//        [self.catLayer setPosition:CGPointMake(p.x, p.y)];
//        
//        self.startFrame = CGRectMake(p.x, p.y, 85, 85);
//        [[self.view layer]addSublayer:self.catLayer];
//        self.isOnView = YES;
//    } else if (!self.isOnView2) {
//        UIImage *catImage2 = [UIImage imageNamed:@"cat2.png"];
//        CGImageRef image2 = [catImage2 CGImage];
//        [self.catLayer2 setContents:(__bridge id)image2];
//        [self.catLayer2 setContentsGravity:kCAGravityResizeAspect];
//        [self.catLayer2 setBounds:CGRectMake(p.x, p.y, 85, 85)];
//        [self.catLayer2 setPosition:CGPointMake(p.x, p.y)];
//        
//        self.startFrame2 = CGRectMake(p.x, p.y, 85, 85);
//        [[self.view layer]addSublayer:self.catLayer2];
//        self.isOnView2 = YES;
//        
//    } else if (!self.isOnView3) {
//        UIImage *catImage3 = [UIImage imageNamed:@"cat3.png"];
//        CGImageRef image3 = [catImage3 CGImage];
//        [self.catLayer3 setContents:(__bridge id)image3];
//        [self.catLayer3 setContentsGravity:kCAGravityResizeAspect];
//        [self.catLayer3 setBounds:CGRectMake(p.x, p.y, 85, 85)];
//        [self.catLayer3 setPosition:CGPointMake(p.x, p.y)];
//        
//        self.startFrame3 = CGRectMake(p.x, p.y, 85, 85);
//        [[self.view layer]addSublayer:self.catLayer3];
//        self.isOnView3 = YES;
//        
//    } else if (!self.isOnView4) {
//        UIImage *catImage4 = [UIImage imageNamed:@"cat4.png"];
//        CGImageRef image4 = [catImage4 CGImage];
//        [self.catLayer4 setContents:(__bridge id)image4];
//        [self.catLayer4 setContentsGravity:kCAGravityResizeAspect];
//        [self.catLayer4 setBounds:CGRectMake(p.x, p.y, 85, 85)];
//        [self.catLayer4 setPosition:CGPointMake(p.x, p.y)];
//        
//        self.startFrame4 = CGRectMake(p.x, p.y, 85, 85);
//        [[self.view layer]addSublayer:self.catLayer4];
//        self.isOnView4 = YES;
//        
//    } else if (!self.isOnView5) {
//        UIImage *catImage5 = [UIImage imageNamed:@"cat5.png"];
//        CGImageRef image5 = [catImage5 CGImage];
//        [self.catLayer5 setContents:(__bridge id)image5];
//        [self.catLayer5 setContentsGravity:kCAGravityResizeAspect];
//        [self.catLayer5 setBounds:CGRectMake(p.x, p.y, 85, 85)];
//        [self.catLayer5 setPosition:CGPointMake(p.x, p.y)];
//        
//        self.startFrame5 = CGRectMake(p.x, p.y, 85, 85);
//        [[self.view layer]addSublayer:self.catLayer5];
//        self.isOnView5 = YES;
//    }
//    }
//    NSArray *arr = [[NSArray alloc] initWithArray:self.view.layer.sublayers];
//    CALayer *obj = [[CALayer alloc] init];
//    obj = [arr objectAtIndex:0];
//    NSLog(@"%@", self.catLayer);
//    NSLog(@"%@", [arr objectAtIndex:0]);
//    
//    if (![layer isEqual:self.catLayer]) {
//        if (self.isAtStart) {
//                            [self.catLayer setBounds:CGRectMake(0, 0, 85, 85)];
//                            [self.catLayer setFrame:self.startFrame];
//                            [self.catLayer setPosition:CGPointMake(self.startFrame.origin.x, self.startFrame.origin.y)];
//            
//                    } else {
//                            CGPoint superCenter = CGPointMake(CGRectGetMidX([self.view bounds]), CGRectGetMidY([self.view bounds]));
//                            [self.catLayer setPosition:superCenter];
//                            [self.catLayer setFrame:self.endFrame];
//                            [self.catLayer setPosition:superCenter];
//                    }
//                 self.isAtStart = !self.isAtStart;
//
//    }
   
//    if (actualLayer == self.catLayer) {
//        if (self.isAtStart) {
//                [self.catLayer setBounds:CGRectMake(0, 0, 85, 85)];
//                [self.catLayer setFrame:self.startFrame];
//                [self.catLayer setPosition:CGPointMake(self.startFrame.origin.x, self.startFrame.origin.y)];
//
//        } else {
//                CGPoint superCenter = CGPointMake(CGRectGetMidX([self.view bounds]), CGRectGetMidY([self.view bounds]));
//                [self.catLayer setPosition:superCenter];
//                [self.catLayer setFrame:self.endFrame];
//                [self.catLayer setPosition:superCenter];
//        }
//     self.isAtStart = !self.isAtStart;
//    }
    CGPoint superCenter = CGPointMake(CGRectGetMidX([self.view bounds]), CGRectGetMidY([self.view bounds]));
    
    for (CALayer *layer in self.view.layer.sublayers) {
        for (CALayer *catLayer in self.arrayOfLayers) {
            if ([layer containsPoint:[self.view.layer convertPoint:p toLayer: catLayer]]) {
                if (CGPointEqualToPoint(layer.position, superCenter) ) {
                    [self.catLayer2 setBounds:CGRectMake(0, 0, 85, 85)];
                    [self.catLayer2 setFrame:self.startFrame2];
                    [self.catLayer2 setPosition:CGPointMake(self.startFrame2.origin.x, self.startFrame2.origin.y)];
                } else {
            
                    CABasicAnimation* animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
                    [animation setDuration:0.5];
                    [animation setRepeatCount:1];
                    [animation setFromValue:[NSNumber numberWithFloat:0] ];
                    [animation setToValue:[NSNumber numberWithFloat:M_PI * 2.0]];
                    [self.catLayer2 addAnimation:animation forKey:@"transform.rotation"];
                
                    CGPoint superCenter = CGPointMake(CGRectGetMidX([self.view bounds]), CGRectGetMidY([self.view bounds]));
                    [self.catLayer2 setPosition:superCenter];
                    [self.catLayer2 setFrame:self.endFrame];
                    [self.catLayer2 setPosition:superCenter];
                }
            self.isAtStart2 = !self.isAtStart2;
        }
            if ([layer containsPoint:[self.view.layer convertPoint:p toLayer: catLayer] ]) {
                            if (CGPointEqualToPoint(layer.position, superCenter) ) {
                                [self.catLayer3 setBounds:CGRectMake(0, 0, 85, 85)];
                                [self.catLayer3 setFrame:self.startFrame3];
                                [self.catLayer3 setPosition:CGPointMake(self.startFrame3.origin.x, self.startFrame3.origin.y)];
                            } else {
                                CABasicAnimation* animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
                                [animation setDuration:0.5];
                                [animation setRepeatCount:1];
                                [animation setFromValue:[NSNumber numberWithFloat:0] ];
                                [animation setToValue:[NSNumber numberWithFloat:M_PI * 2.0]];
                                [self.catLayer3 addAnimation:animation forKey:@"transform.rotation"];
                                
                                CGPoint superCenter = CGPointMake(CGRectGetMidX([self.view bounds]), CGRectGetMidY([self.view bounds]));
                                [self.catLayer3 setPosition:superCenter];
                                [self.catLayer3 setFrame:self.endFrame];
                                [self.catLayer3 setPosition:superCenter];
                            }
                            self.isAtStart3 = !self.isAtStart3;
            }
            
            if ([layer containsPoint:[self.view.layer convertPoint:p toLayer: catLayer] ]) {
                if (CGPointEqualToPoint(layer.position, superCenter) ) {
                    [self.catLayer setBounds:CGRectMake(0, 0, 85, 85)];
                    [self.catLayer setFrame:self.startFrame];
                    [self.catLayer setPosition:CGPointMake(self.startFrame.origin.x, self.startFrame.origin.y)];
                } else {
                    CABasicAnimation* animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
                    [animation setDuration:0.5];
                    [animation setRepeatCount:1];
                    [animation setFromValue:[NSNumber numberWithFloat:0] ];
                    [animation setToValue:[NSNumber numberWithFloat:M_PI * 2.0]];
                    [self.catLayer addAnimation:animation forKey:@"transform.rotation"];
                    
                    CGPoint superCenter = CGPointMake(CGRectGetMidX([self.view bounds]), CGRectGetMidY([self.view bounds]));
                    [self.catLayer setPosition:superCenter];
                    [self.catLayer setFrame:self.endFrame];
                    [self.catLayer setPosition:superCenter];
                }
                self.isAtStart = !self.isAtStart;
            }



        }
//        if ([layer containsPoint:[self.view.layer convertPoint:p toLayer: layer]]) {
//                if (self.isAtStart) {
//                    [self.catLayer setBounds:CGRectMake(0, 0, 85, 85)];
//                    [self.catLayer setFrame:self.startFrame];
//                    [self.catLayer setPosition:CGPointMake(self.startFrame.origin.x, self.startFrame.origin.y)];
//                    self.isAtStart = !self.isAtStart;
//
//                } else {
//                    CGPoint superCenter = CGPointMake(CGRectGetMidX([self.view bounds]), CGRectGetMidY([self.view bounds]));
//                    [self.catLayer setPosition:superCenter];
//                    [self.catLayer setFrame:self.endFrame];
//                    [self.catLayer setPosition:superCenter];
//                    //self.isAtStart = !self.isAtStart;
//
//                }
//            self.isAtStart = !self.isAtStart;
//
//        }
        
//        if ([layer containsPoint:[self.view.layer convertPoint:p toLayer: layer]]) {
//            if (self.isAtStart2) {
//                [self.catLayer2 setBounds:CGRectMake(0, 0, 85, 85)];
//                [self.catLayer2 setFrame:self.startFrame2];
//                [self.catLayer2 setPosition:CGPointMake(self.startFrame2.origin.x, self.startFrame2.origin.y)];
//            } else {
//                
//                CABasicAnimation* animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
//                [animation setDuration:0.5];
//                [animation setRepeatCount:1];
//                [animation setFromValue:[NSNumber numberWithFloat:0] ];
//                [animation setToValue:[NSNumber numberWithFloat:M_PI * 2.0]];
//                [self.catLayer2 addAnimation:animation forKey:@"transform.rotation"];
//                
//                CGPoint superCenter = CGPointMake(CGRectGetMidX([self.view bounds]), CGRectGetMidY([self.view bounds]));
//                [self.catLayer2 setPosition:superCenter];
//                [self.catLayer2 setFrame:self.endFrame];
//                [self.catLayer2 setPosition:superCenter];
//            }
//            self.isAtStart2 = !self.isAtStart2;
//        }
//        
//        if ([layer containsPoint:[self.view.layer convertPoint:p toLayer: layer]]) {
//            if (self.isAtStart3) {
//                [self.catLayer3 setBounds:CGRectMake(0, 0, 85, 85)];
//                [self.catLayer3 setFrame:self.startFrame3];
//                [self.catLayer3 setPosition:CGPointMake(self.startFrame3.origin.x, self.startFrame3.origin.y)];
//            } else {
//                CGPoint superCenter = CGPointMake(CGRectGetMidX([self.view bounds]), CGRectGetMidY([self.view bounds]));
//                [self.catLayer3 setPosition:superCenter];
//                [self.catLayer3 setFrame:self.endFrame];
//                [self.catLayer3 setPosition:superCenter];
//            }
//            self.isAtStart3 = !self.isAtStart3;
//        }
//        
//        if ([layer containsPoint:[self.view.layer convertPoint:p toLayer: layer]]) {
//            if (self.isAtStart4) {
//                [self.catLayer4 setBounds:CGRectMake(0, 0, 85, 85)];
//                [self.catLayer4 setFrame:self.startFrame4];
//                [self.catLayer4 setPosition:CGPointMake(self.startFrame4.origin.x, self.startFrame4.origin.y)];
//            } else {
//                CABasicAnimation *fadeAnim=[CABasicAnimation animationWithKeyPath:@"opacity"];
//                fadeAnim.fromValue=[NSNumber numberWithDouble:1.0];
//                fadeAnim.toValue=[NSNumber numberWithDouble:0.0];
//                fadeAnim.duration = 3;
//                fadeAnim.repeatCount = 1;
//                // fadeAnim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//                [self.catLayer3 addAnimation:fadeAnim forKey:@"opacity"];
//                
//                CGPoint superCenter = CGPointMake(CGRectGetMidX([self.view bounds]), CGRectGetMidY([self.view bounds]));
//                [self.catLayer4 setPosition:superCenter];
//                [self.catLayer4 setFrame:self.endFrame];
//                [self.catLayer4 setPosition:superCenter];
//            }
//            self.isAtStart4 = !self.isAtStart4;
//        }


        
    }
}


- (IBAction)deleteAction:(id)sender {
    
    self.isAtStart = YES;
    self.isOnView = NO;
    
    self.isAtStart2 = YES;
    self.isOnView2 = NO;
    
    self.isAtStart3 = YES;
    self.isOnView3 = NO;
    
    self.isAtStart4 = YES;
    self.isOnView4 = NO;
    
    self.isAtStart5 = YES;
    self.isOnView5 = NO;
    
    for(CALayer *layer in self.view.layer.sublayers)
    {
        [layer setContents:nil];
    }
    //self.view.layer.sublayers = nil;
   
    
}



-(void)moveToCentreMethod:(CGPoint)p {

//        for (CALayer *layer in self.view.layer.sublayers) {
//            if ([layer containsPoint:[self.view.layer convertPoint:p toLayer: layer]]) {
                    if (!self.isAtStart) {
                        CGPoint superCenter = CGPointMake(CGRectGetMidX([self.view bounds]), CGRectGetMidY([self.view bounds]));
                        [self.catLayer setPosition:superCenter];
                        [self.catLayer setFrame:self.endFrame];
                        [self.catLayer setPosition:superCenter];
                    } else {
                        [self.catLayer setPosition:CGPointMake(160, 160)];
                        [self.catLayer setBounds:CGRectMake(0, 0, 85, 85)];
                        [self.catLayer setFrame:self.startFrame];
                    }
                    self.isAtStart = !self.isAtStart;
           // }
//            if ([layer containsPoint:[self.view.layer convertPoint:p toLayer: layer]]) {
//                if (self.isAtStart2) {
//                    CGPoint superCenter = CGPointMake(CGRectGetMidX([self.view bounds]), CGRectGetMidY([self.view bounds]));
//                    [self.cat2Layer setPosition:superCenter];
//                    [self.cat2Layer setFrame:self.endFrame];
//                    [self.cat2Layer setPosition:superCenter];
//                } else {
//                    [self.cat2Layer setPosition:CGPointMake(160, 160)];
//                    [self.cat2Layer setBounds:CGRectMake(0, 0, 85, 85)];
//                    [self.cat2Layer setFrame:self.startFrame];
//                }
//                self.isAtStart2 = !self.isAtStart2;
//            }
    
      //  }

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
