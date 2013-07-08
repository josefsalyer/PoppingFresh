//
//  JSPickerContentController.m
//  PoppingFresh
//
//  Created by john salyer on 7/5/13.
//  Copyright (c) 2013 josef salyer. All rights reserved.
//

#import "JSPickerContentController.h"

#define kMethodWidth 100.0f
#define kMaskWidth 250.0f
#define kNumberOfComponents 2
#define kFirstComponentIndex 0

@interface JSPickerContentController ()

@end

@implementation JSPickerContentController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        [self setMethods:[NSMutableArray arrayWithObjects:@"Email", @"Text", @"Phone", nil]];
        [self setMasks:[NSMutableArray arrayWithObjects:@"joe@foo.com",@"6148675309",@"joe@foo.com",@"6148675309",@"joe@foo.com", nil]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_methods release];
    [_masks release];
    [_picker release];
    [super dealloc];
}

#pragma -
#pragma mark UIPickerViewDelegate methods
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    return (component == kFirstComponentIndex) ? kMethodWidth : kMaskWidth;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString *title;
    switch (component) {
        case 0:
            title = [[self methods] objectAtIndex:row];
            break;
        case 1:
            title = [[self masks] objectAtIndex:row];
            break;
        default:
            title = @"WTF?";
            break;
    }
    
    return title;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString *componentName = (component == 0) ? @"methods" : @"masks";
    
    NSLog(@"selected item %i for %@", row, componentName);
}


#pragma -
#pragma mark UIPickerViewDataSource methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return kNumberOfComponents;
}


-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    NSInteger count = (component == kFirstComponentIndex) ? [[self methods] count] : [[self masks] count];
    
    
    return count;
}



@end
