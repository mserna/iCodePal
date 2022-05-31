//
//  CPPObjC_Wrapper.m
//  iCodePal
//
//  Created by Matthew Serna on 5/30/22.
//

#import "CPPObjC_Wrapper.h"
#import "HashMapQuestions.hpp"
#import <vector>

@implementation CPPObjC_Wrapper

-(vector<int>)nsarray_to_vector: (NSMutableArray<NSNumber *>*)arr
{
    vector<int> vect = {};
    for (NSNumber * num in arr)
    {
        int number = [num intValue];
        vect.push_back(number);
    }
    
    return vect;
}

-(NSMutableArray<NSNumber *>*)vector_to_nsarray: (vector<int>)vect
{
    NSMutableArray<NSNumber *> * arr = [[NSMutableArray alloc] init];
    for (int i = 0; i < vect.size(); i++)
    {
        [arr addObject: @(vect[i])];
    }
    
    return arr;
}

-(NSMutableArray<NSNumber *> *)hashQuestions: (int)target :(NSMutableArray<NSNumber *> *)arr
{
    HashMapQuestions hq;
    // Convert NSMutableArray into vector<int> for assignment
    //NSLog(@"The incoming array: %@", arr);
    vector<int> vect = [self nsarray_to_vector:arr];
    
    vector<int> ans = hq.two_sums(vect, target);
    
    NSMutableArray<NSNumber *> * myArr = [self vector_to_nsarray:ans];
    
    return myArr;
}

@end
