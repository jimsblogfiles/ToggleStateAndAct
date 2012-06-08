//
//  ViewController.m
//  ToggleStateAndAct
//
//  Created by James Border on 4/26/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

-(void)doSomethingIfUserAgrees:(id) sender;
-(void)actHasAccepted:(id)sender;

@end

@implementation ViewController

-(void)actHasAccepted:(UIButton*)sender {
	sender.selected = !sender.selected;
}

-(void)doSomethingIfUserAgrees:(id) sender {
	
	NSString *feedback;

	if ( ! buttonHasAccepted.selected ) {
		feedback = @"You must agree to terms & conditions";
	} else {
		feedback = @"User agreed to whatever";
		// [self doSomething];
	}

	UIAlertView *alert = [[UIAlertView alloc] initWithTitle: @"Alert" 
													message: feedback 
												   delegate: self
										  cancelButtonTitle: @"OK"
										  otherButtonTitles: nil];

	[alert show];

}

#pragma mark - View lifecycle

- (void)viewDidLoad {

    [super viewDidLoad];
	
	buttonHasAccepted = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[buttonHasAccepted setFrame:CGRectMake(10, 15, 32, 32)];
	[buttonHasAccepted setTitle:@"?" forState:UIControlStateNormal];
	[buttonHasAccepted setTitle:@"√" forState:UIControlStateSelected];
	[buttonHasAccepted addTarget:self action:@selector(actHasAccepted:) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:buttonHasAccepted];
	
	UILabel *myLabel = [ [UILabel alloc ] initWithFrame:CGRectMake(50, 20, 270, 21) ];
	[myLabel setTextAlignment:UITextAlignmentLeft];
	[myLabel setBackgroundColor:[UIColor clearColor]];
	[myLabel setText:@"I agree to terms & conditions here."];
	[self.view addSubview:myLabel];

	UIButton *bttn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[bttn setFrame:CGRectMake(10, 100, 300, 37)];
	[bttn setTitle:@"Submit" forState:UIControlStateNormal];
	[bttn addTarget:self action:@selector(doSomethingIfUserAgrees:) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:bttn];
	
}

#pragma mark -

- (void)viewDidUnload {

    [super viewDidUnload];
	buttonHasAccepted = nil;

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning {
	
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
	
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
