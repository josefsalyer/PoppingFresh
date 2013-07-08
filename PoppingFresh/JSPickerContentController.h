//
//  JSPickerContentController.h
//  PoppingFresh
//
//  Created by john salyer on 7/5/13.
//  Copyright (c) 2013 josef salyer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSPickerContentController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (retain, nonatomic) IBOutlet UIPickerView *picker;
@property (retain, nonatomic) NSMutableArray *methods;
@property (retain, nonatomic) NSMutableArray *masks;


@end
