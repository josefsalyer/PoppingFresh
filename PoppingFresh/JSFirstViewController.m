//
//  JSFirstViewController.m
//  PoppingFresh
//
//  Created by john salyer on 7/5/13.
//  Copyright (c) 2013 josef salyer. All rights reserved.
//

#import "JSFirstViewController.h"
#import "JSPickerContentController.h"

@interface JSFirstViewController ()

@end


@implementation JSFirstViewController



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
        
        
        JSPickerContentController *pickerContentController = [[JSPickerContentController alloc] initWithNibName:@"JSPickerContentController" bundle:[NSBundle mainBundle]];
        
        
        
        

        self.myPopoverController = [[UIPopoverController alloc] initWithContentViewController:pickerContentController];
    
        [[self myPopoverController] setPopoverContentSize:CGSizeMake(350.0f, 350.0f)];
        
        
        
        
        [pickerContentController release];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    [_myPopoverController release];
    [_showPopoverButton release];
    [super dealloc];
}
- (IBAction)didTouchShowPopoverButton:(id)sender
{
   
    
    [[self myPopoverController] presentPopoverFromRect:[[self showPopoverButton] frame] inView:[self view] permittedArrowDirections:UIPopoverArrowDirectionRight animated:YES];
}
@end
