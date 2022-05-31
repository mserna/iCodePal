//
//  HashMapQuestions.cpp
//  iCodePal
//
//  Created by Matthew Serna on 5/30/22.
//

#include "HashMapQuestions.hpp"

vector<int> HashMapQuestions::two_sums(vector<int> nums, int target) {
        map<int, int> myMap;
        vector<int> result;
        
        for (int i = 0; i < nums.size(); i++) {
            int complement = target - nums[i];
            if (myMap.find(complement) != myMap.end()) {
                result.push_back(myMap.find(complement)->second);
                result.push_back(i);
                return result;
            }
            
            // Key: element; value is index
            myMap[nums[i]] = i;
        }
        
        return {0,0};
};
