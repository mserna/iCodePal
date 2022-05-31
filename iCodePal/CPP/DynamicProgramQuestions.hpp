//
//  DynamicProgramQuestions.hpp
//  iCodePal
//
//  Created by Matthew Serna on 5/30/22.
//

#ifndef DynamicProgramQuestions_hpp
#define DynamicProgramQuestions_hpp

#include <stdio.h>
#include <stdlib.h>
#include <map>
#include <iostream>

using namespace std;

class DynamicProgramQuestions {
public:
    int fib_simple(int n);
    int fib_dp(int n, map<int, int> memo);  // Using memoization
};

#endif /* DynamicProgramQuestions_hpp */
