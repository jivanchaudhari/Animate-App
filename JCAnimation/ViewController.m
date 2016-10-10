//
//  ViewController.m
//  JCAnimation
//
//  Created by Student P_06 on 09/10/16.
//  Copyright © 2016 Jivan Chaudhari. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)animationUpDuration :(NSTimeInterval)time
                        delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.imageBall setFrame:CGRectMake(self.imageBall.frame.origin.x, self.imageBall.frame.origin.y - 100, self.imageBall.frame.size.width, self.imageBall.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Animation Finished");
        }
    }];
}
-(void)animationDownDuration :(NSTimeInterval)time
                        delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.imageBall setFrame:CGRectMake(self.imageBall.frame.origin.x, self.imageBall.frame.origin.y + 100, self.imageBall.frame.size.width, self.imageBall.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Animation Finished");
        }
    }];
}

-(void)animationLeftDuration :(NSTimeInterval)time
                         delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.imageBall setFrame:CGRectMake(self.imageBall.frame.origin.x - 100, self.imageBall.frame.origin.y , self.imageBall.frame.size.width, self.imageBall.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Animation Finished");
        }
    }];
}
-(void)animationRightDuration :(NSTimeInterval)time
                        delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.imageBall setFrame:CGRectMake(self.imageBall.frame.origin.x + 100, self.imageBall.frame.origin.y, self.imageBall.frame.size.width, self.imageBall.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Animation Finished");
        }
    }];
}
-(void)animationNorthWestDuration :(NSTimeInterval)time
                         delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.imageBall setFrame:CGRectMake(self.imageBall.frame.origin.x - 100, self.imageBall.frame.origin.y - 100, self.imageBall.frame.size.width, self.imageBall.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Animation Finished");
        }
    }];
}

-(void)animationNorthEastDuration :(NSTimeInterval)time
                         delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.imageBall setFrame:CGRectMake(self.imageBall.frame.origin.x + 100, self.imageBall.frame.origin.y - 100, self.imageBall.frame.size.width, self.imageBall.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Animation Finished");
        }
    }];
}
-(void)animationSouthEastDuration :(NSTimeInterval)time
                         delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.imageBall setFrame:CGRectMake(self.imageBall.frame.origin.x + 100, self.imageBall.frame.origin.y + 100, self.imageBall.frame.size.width, self.imageBall.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Animation Finished");
        }
    }];
}

-(void)animationSouthWestDuration :(NSTimeInterval)time
                             delay:(NSTimeInterval)delayTime {
    
    [UIView animateWithDuration:time delay:delayTime options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        [self.imageBall setFrame:CGRectMake(self.imageBall.frame.origin.x - 100, self.imageBall.frame.origin.y + 100, self.imageBall.frame.size.width, self.imageBall.frame.size.height)];
        
    } completion:^(BOOL finished) {
        if (finished) {
            NSLog(@"Animation Finished");
        }
    }];
}

-(void)animatedZoomWithScle :(CGFloat) scale {
    
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        self.imageBall.transform = CGAffineTransformMakeScale(scale, scale);
        
    } completion:^(BOOL finished) {
        
        if (finished) {
            
            NSLog(@"Zoom IN Direction");
            
        }
    }];
    
}

-(void)animatedZoomSize : (CGFloat) size {
    [UIView animateWithDuration:0.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{
        
        
        [self.imageBall setFrame:CGRectMake(self.imageBall.frame.origin.x, self.imageBall.frame.origin.y, self.imageBall.frame.size.width + size, self.imageBall.frame.size.height + size)];
        
    } completion:^(BOOL finished) {
        
        if (finished) {
            
            NSLog(@"Size Zoom Direction");
            
        }
    }];
}



- (IBAction)zoomOutAction:(id)sender {
    [self animatedZoomSize: -100];
}

- (IBAction)zoomInAction:(id)sender {
    
    [self animatedZoomSize: 100];
}

- (IBAction)buttonAction:(id)sender {
    
    UIButton *button = sender;
    
    if (button.tag == 100) {
        
        [self animationNorthWestDuration:0.5 delay:0.0];
    }
     else if (button.tag == 101) {
        [self animationUpDuration:0.5 delay:0.0];
        
    }
    else if (button.tag == 102) {
        [self  animationNorthEastDuration:0.5 delay:0.0];
        
    }
    else if (button.tag == 103) {
        
        [self animationLeftDuration:0.5 delay:0.0];
        
        
    }
    else if (button.tag == 104) {
        
        [self animationRightDuration:0.5 delay:0.0];
    }
    else if (button.tag == 105) {
        [self animationSouthWestDuration:0.5 delay:0.0];
        
    }
    else if (button.tag == 106) {
        
        [self animationDownDuration:0.5 delay:0.0];
    }
    else if (button.tag == 107) {
        
        [self animationSouthEastDuration:0.5 delay:0];
    }
}
@end
