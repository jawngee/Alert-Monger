AlertMonger is a simple helper class for quickly displaying UIAlertView in iOS apps.

It sidesteps the spaghetti delegate problem by allowing you to use blocks when a user selects a button in the alert.

Here is an example:

    [AlertMonger showAlertWithTitle:@"Alert"
    						message:@"This is an alert"
    			  cancelButtonTitle:@"Cancel"
    		   clickedButtonAtIndex:^(NSInteger buttonIndex) {
    			   NSLog(@"Button %d clicked",buttonIndex);
    		   }
    			  otherButtonTitles:@"One",@"Two",@"Three",nil];

This is public domain.  Use it however the heck you like.

Thanks to EJ Mablekos for the inspiration.