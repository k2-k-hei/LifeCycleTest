    //
//  LifeCycleTestViewController.m
//  LifeCycleTest
//
//  Created by k2 on 10/10/15.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "LifeCycleTestViewController.h"

@implementation LifeCycleTestViewController

//--------------------------------------------------------------//
#pragma mark -- Initialize --
//--------------------------------------------------------------//

- (id)init
{
	if((self = [super init])){
		
	}
	
	return self;
}

- (void)dealloc {
    [super dealloc];
}

//--------------------------------------------------------------//
#pragma mark -- memory manage --
//--------------------------------------------------------------//

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

//--------------------------------------------------------------//
#pragma mark -- View lifecycle --
//--------------------------------------------------------------//

- (void)loadView {
	[super loadView];
	NSLog(@"loadView");
}

- (void)viewDidLoad 
{
    [super viewDidLoad];
	NSLog(@"viewDidLoad");
	self.view.backgroundColor = [UIColor yellowColor];
	UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	button.frame = CGRectMake((self.view.frame.size.width - 100) /2, (self.view.frame.size.height - 30) /2, 100.0, 30.0);
	[button setTitle:@"remove" forState:UIControlStateNormal];
	[button addTarget:self action:@selector(removeAction:) forControlEvents:UIControlEventTouchUpInside];
	[self.view addSubview:button];
}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	NSLog(@"viewWillAppear");
}   

- (void)viewDidAppear:(BOOL)animated
{
	[super viewDidAppear:animated];
	NSLog(@"viewDidAppear");
}

- (void)viewWillDisappear:(BOOL)animated{
	[super viewWillDisappear:animated];
	NSLog(@"viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
	NSLog(@"viewDidDisappear");
}

//--------------------------------------------------------------//
#pragma mark -- UIViewControllerRotation --
//--------------------------------------------------------------//

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

//--------------------------------------------------------------//
#pragma mark -- LifeCycleTestViewController method --
//--------------------------------------------------------------//

- (IBAction)removeAction:(id)sender
{
	[self.view removeFromSuperview];
}

@end
