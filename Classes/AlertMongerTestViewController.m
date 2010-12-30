//
//  AlertMongerTestViewController.m
//  AlertMongerTest
//
//  Created by Jon Gilkison on 12/29/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AlertMongerTestViewController.h"
#import "AlertMonger.h"

@implementation AlertMongerTestViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


-(IBAction)alert:(id)sender
{
	[AlertMonger showAlertWithTitle:@"Alert"
							message:@"This is an alert"
				  cancelButtonTitle:@"Cancel"
			   clickedButtonAtIndex:^(NSInteger buttonIndex) {
				   NSLog(@"Button %d clicked",buttonIndex);
			   }
				  otherButtonTitles:@"One",@"Two",@"Three",nil];
}

-(IBAction)nestedAlert:(id)sender
{
	[AlertMonger showAlertWithTitle:@"Alert"
							message:@"This is an alert"
				  cancelButtonTitle:@"Cancel"
			   clickedButtonAtIndex:^(NSInteger buttonIndex) {
				   if (buttonIndex==1)
				   {
					   [AlertMonger showAlertWithTitle:@"Nested Alert"
											   message:@"This is a nested alert"
									 cancelButtonTitle:@"Cancel"
								  clickedButtonAtIndex:^(NSInteger buttonIndex) {
									  NSLog(@"Button %d clicked",buttonIndex);
								  }
									 otherButtonTitles:@"One",@"Two",@"Three",nil];
				   }
			   }
				  otherButtonTitles:@"Show Nested",nil];
}

-(IBAction)quickAlert:(id)sender
{
	[AlertMonger showAlertWithTitle:@"Quick Alert"
							message:@"This is a quick alert"
				  cancelButtonTitle:@"OK"];
}

@end
