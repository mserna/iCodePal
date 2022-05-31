//
//  DynamicProgramQuestions.cpp
//  iCodePal
//
//  Created by Matthew Serna on 5/30/22.
//

#include "DynamicProgramQuestions.hpp"

int DynamicProgramQuestions::fib_simple(int n) {
    if (n <= 2)
        return 1;
    
    return fib_simple(n - 1) + fib_simple(n - 2);
}

int DynamicProgramQuestions::fib_dp(int n, map<int, int> memo = {}) {
    if (memo.find(n) != memo.end())
        return memo[n];
    
    if (n <= 2)
        return 1;
    
    memo[n] = fib_dp(n - 1, memo) + fib_dp(n - 2, memo);
    return memo[n];
}
