//
//  MemberData.m
//  CodeTheChange
//
//  Created by Abhishek Fatehpuria on 2/1/14.
//  Copyright (c) 2014 Abhishek Fatehpuria. All rights reserved.
//

#import "MemberData.h"

@implementation MemberData

@synthesize name = _name;
@synthesize bio = _bio;

-(id)initWithData:(NSString*)name bio:(NSString*)bio{
    if ((self = [super init])) {
        self.name = name;
        self.bio = bio;
    }
    return self;
}


@end
