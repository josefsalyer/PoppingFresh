//
//  JSFirstViewController.h
//  PoppingFresh
//
//  Created by john salyer on 7/5/13.
//  Copyright (c) 2013 josef salyer. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface JSFirstViewController : UIViewController


@property (retain, nonatomic) UIPopoverController *myPopoverController;


@property (retain, nonatomic) IBOutlet UIButton *showPopoverButton;

- (IBAction)didTouchShowPopoverButton:(id)sender;

@end
