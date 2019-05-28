//
//  main.m
//  Test
//
//  Created by fangshufeng on 2019/5/7.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <vector>
#include <deque>
#include <iostream>

using namespace std;

int maxInItems(deque<int> &windows,vector<int> &items) ;

class Solution {
public:
    vector<int> maxSlidingWindow(vector<int>& nums, int k) {
        
//        deque<int> windows;
//        vector<int> res;
//        for(int i = 0; i < nums.size(); i++){
//
//            if(i >= k && windows.front() <= i-k) {
//                windows.pop_front();
//            }
//
//            while(!windows.empty() && nums[windows.back()] <= nums[i]) {
//                windows.pop_back();
//            }
//            windows.push_back(i);
//
//            for (int i = 0; i < windows.size(); i ++) {
//                cout << "dasdas:" <<  windows.at(i) << endl;
//            }
//            cout << "----" << endl;
//
//            if(i >= k - 1) {
//                res.push_back(nums[windows.front()]);
//            }
//        }
//        return res;
//
        
        if (nums.size() == 0 ) return nums;


        deque<int> window;
        vector<int> backValue;

        for (int i = 0; i < nums.size(); i++) {
            
            if (i < k) {
                window.push_back(i);
            } else {
                window.pop_front();
                window.push_back(i);
            }
            
            if (window.size() == k) {
                backValue.push_back(maxInItems(window, nums));
            }
           
        }


        return backValue;
        
    }
};


int maxInItems(deque<int> &windows,vector<int> &items) {
    
    int maxIndex = windows.at(0);
    
    for (int i = 0; i< windows.size(); i++) {
        int index = windows.at(i);
        if (index > maxIndex) {
            maxIndex = index;
        }
    }
    
    return items[maxIndex];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Solution a;
        
        vector<int> obj = {1,3,-1,-3,5,3,6,7};
        vector<int> obj2  = a.maxSlidingWindow(obj, 3);
        
        
        
    }
    return 0;
}
