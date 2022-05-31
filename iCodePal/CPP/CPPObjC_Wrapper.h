//
//  CPPObjC_Wrapper.h
//  iCodePal
//
//  Created by Matthew Serna on 5/30/22.
//

#ifndef CPPObjC_Wrapper_h
#define CPPObjC_Wrapper_h

#import <Foundation/Foundation.h>

@interface CPPObjC_Wrapper : NSObject

- (NSMutableArray<NSNumber *>*)hashQuestions:(int)target :(NSMutableArray<NSNumber *>*)arr;

@end


#endif /* CPPObjC_Wrapper_h */

