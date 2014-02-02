//
//  DataConstructor.m
//  CodeTheChange
//
//  Created by Abhishek Fatehpuria on 2/1/14.
//  Copyright (c) 2014 Abhishek Fatehpuria. All rights reserved.
//

#import "DataConstructor.h"
#import "MemberDataDoc.h"


@implementation DataConstructor

-(NSMutableArray*)construct
{
    NSString *strPath = [[NSBundle mainBundle] pathForResource:@"CodeTheChange" ofType:@"csv"];
    NSString* fileContents = [NSString stringWithContentsOfFile:strPath encoding:NSUTF8StringEncoding error:nil];
    NSArray * rows = [[NSArray alloc] init];
    rows = [fileContents componentsSeparatedByString:@"\r"];
    NSMutableArray *member_list = [[NSMutableArray alloc] init];
    for (NSString *line in rows)
    {
        NSArray *components = [line componentsSeparatedByString:@","];
        NSString *name; NSString *bio; NSString * picture; NSString *fbook; NSString *linkedin; NSString *git; NSString *email;
        name = [components objectAtIndex:0];
        bio = [components objectAtIndex:1];
        picture = [components objectAtIndex:2];
        fbook = [components objectAtIndex:3];
        linkedin = [components objectAtIndex:4];
        git = [components objectAtIndex:5];
        email = [components objectAtIndex:6];
        
        if([name length]== 0)
        {
            name = @"Default";
        }
        if([bio length]== 0)
        {
            bio = @"No Bio.";
        }
        if([picture length]== 0)
        {
            picture = @"default.jpg";
        }
        if([fbook length]== 0)
        {
            fbook = @"http://www.facebook.com";
            fbook = [fbook stringByReplacingOccurrencesOfString:@"www." withString:@"m."];
        }
        if([linkedin length]== 0)
        {
            linkedin = @"http://www.linkedin.com";
        }
        if([git length]== 0)
        {
            git = @"http://www.github.com";
        }
        if([fbook length]== 0)
        {
            email = @"abhishekf@berkeley.edu";
        }
        MemberDataDoc * member = [[MemberDataDoc alloc] initWithPics:name bio:bio fullImage:[UIImage imageNamed:picture] facebook:fbook linkedin:linkedin git:git email:email];
        [member_list addObject:member];
    }
    return member_list;
}


@end
