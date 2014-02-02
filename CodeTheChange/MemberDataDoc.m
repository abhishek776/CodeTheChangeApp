//
//  MemberDataDoc.m
//  CodeTheChange
//
//  Created by Abhishek Fatehpuria on 2/1/14.
//  Copyright (c) 2014 Abhishek Fatehpuria. All rights reserved.
//

#import "MemberDataDoc.h"
#import "MemberData.h"

@implementation MemberDataDoc

@synthesize data = _data;
@synthesize fullImage = _fullImage;
@synthesize fbook = _fbook;
@synthesize linkedin = _linkedin;
@synthesize git = _git;
@synthesize email = _email;



- (id)initWithPics:(NSString*)name bio:(NSString*)bio fullImage:(UIImage *)fullImage facebook:(NSString *)fbook linkedin:(NSString *)linkedin git:(NSString *)git email:(NSString *)email
{
    if ((self = [super init])) {
        self.data = [[MemberData alloc] initWithData:name bio:bio];
        self.fullImage = fullImage;
        self.fbook = [NSURL URLWithString:fbook];
        self.linkedin = [NSURL URLWithString:linkedin];
        self.git = [NSURL URLWithString:git];
        self.email = email;
    }
    return self;
}


@end
