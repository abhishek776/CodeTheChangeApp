//
//  MemberData.h
//  CodeTheChange
//
//  Created by Abhishek Fatehpuria on 2/1/14.
//  Copyright (c) 2014 Abhishek Fatehpuria. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MemberData : NSObject

@property (strong) NSString *name;
@property (strong) NSString *bio;

-(id)initWithData:(NSString*)name bio:(NSString*)bio;


@end
