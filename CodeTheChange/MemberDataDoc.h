//
//  MemberDataDoc.h
//  CodeTheChange
//
//  Created by Abhishek Fatehpuria on 2/1/14.
//  Copyright (c) 2014 Abhishek Fatehpuria. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MemberData;

@interface MemberDataDoc : NSObject

@property (strong) MemberData *data;
@property (strong) UIImage *fullImage;
@property (strong) NSURL *fbook;
@property (strong) NSURL *linkedin;
@property (strong) NSURL *git;
@property (strong) NSString *email;


- (id)initWithPics:(NSString*)name bio:(NSString*)bio fullImage:(UIImage *)fullImage facebook:(NSString *)fbook linkedin:(NSString *)linkedin git:(NSString *)git email:(NSString *)email;


@end
