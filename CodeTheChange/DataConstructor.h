//
//  DataConstructor.h
//  CodeTheChange
//
//  Created by Abhishek Fatehpuria on 2/1/14.
//  Copyright (c) 2014 Abhishek Fatehpuria. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MemberDataDoc.h"


// (Model) The class that reads the data from .csv file
// and returns it as an array for the controller.
@interface DataConstructor : NSObject

-(NSMutableArray*)construct;

@end
