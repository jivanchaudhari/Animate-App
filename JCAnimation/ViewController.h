//
//  ViewController.h
//  JCAnimation
//
//  Created by Student P_06 on 09/10/16.
//  Copyright © 2016 Jivan Chaudhari. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *imageBall;
- (IBAction)zoomOutAction:(id)sender;
- (IBAction)zoomInAction:(id)sender;

- (IBAction)buttonAction:(id)sender;

@end

