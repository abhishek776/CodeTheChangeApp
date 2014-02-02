//
//  DetailViewController.m
//  CodeTheChange
//
//  Created by Abhishek Fatehpuria on 2/1/14.
//  Copyright (c) 2014 Abhishek Fatehpuria. All rights reserved.
//

#import "DetailViewController.h"
#import "MemberData.h"
#import "MemberDataDoc.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.title = self.detailItem.data.name;
        self.view.userInteractionEnabled = YES;
        self.view.backgroundColor = [UIColor colorWithRed:210.0/255.0 green:210.0/255.0 blue:210.0/255.0 alpha:1.0];
        self.FullImage.image = self.detailItem.fullImage;
        self.FullImage.userInteractionEnabled = NO;
        self.FullImage.layer.cornerRadius = 9.0;
        self.FullImage.layer.masksToBounds = YES;
        self.subview.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
        self.subview2.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1.0];
        self.subview.userInteractionEnabled = NO;
        self.subview.layer.cornerRadius = 9.0;
        self.subview.layer.masksToBounds = YES;
        self.subview2.userInteractionEnabled = NO;
        self.subview2.layer.cornerRadius = 9.0;
        self.subview2.layer.masksToBounds = YES;
        self.BioLine.scrollEnabled = NO;
        self.BioLine.userInteractionEnabled = NO;
        self.BioLine.backgroundColor = [UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:0];
        self.BioLine.text = self.detailItem.data.bio;
        [self.BioLine sizeToFit];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goToFacebook:(id)sender {
    [[UIApplication sharedApplication] openURL:self.detailItem.fbook];
}

- (IBAction)goToLinkedIn:(id)sender {
    [[UIApplication sharedApplication] openURL:self.detailItem.linkedin];

}

- (IBAction)goToGitHub:(id)sender {
    [[UIApplication sharedApplication] openURL:self.detailItem.git];

}

- (IBAction)goToEmail:(id)sender {
    
    NSArray *email = [[NSArray alloc] initWithObjects:self.detailItem.email, nil];
    MFMailComposeViewController *mc = [[MFMailComposeViewController alloc] init];
    mc.mailComposeDelegate = self;
    [mc setToRecipients:email];
    
    // Present mail view controller on screen
    [self presentViewController:mc animated:YES completion:NULL];
}

- (void) mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail sent");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail sent failure: %@", [error localizedDescription]);
            break;
        default:
            break;
    }
    
    // Close the Mail Interface
    [self dismissViewControllerAnimated:YES completion:NULL];
}



@end
