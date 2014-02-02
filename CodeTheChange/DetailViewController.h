//
//  DetailViewController.h
//  CodeTheChange
//
//  Created by Abhishek Fatehpuria on 2/1/14.
//  Copyright (c) 2014 Abhishek Fatehpuria. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@class MemberDataDoc;

@interface DetailViewController : UIViewController < MFMessageComposeViewControllerDelegate>


@property (strong, nonatomic) MemberDataDoc * detailItem;
@property (weak, nonatomic) IBOutlet UIImageView *FullImage;
@property (weak, nonatomic) IBOutlet UITextView *BioLine;
@property (weak, nonatomic) IBOutlet UIImageView *subview;
@property (weak, nonatomic) IBOutlet UIImageView *subview2;

- (IBAction)goToFacebook:(id)sender;
- (IBAction)goToLinkedIn:(id)sender;
- (IBAction)goToGitHub:(id)sender;
- (IBAction)goToEmail:(id)sender;


@end
