//
//  main.cpp
//  仿函数
//
//  Created by fangshufeng on 2019/2/27.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#include <iostream>

using namespace std;


class Sum {
    
    
public:
    int operator()(int a,int b) {
        return a + b;
    }
};

int main(int argc, const char * argv[]) {
  
    Sum sum;
    
    cout << sum(10,20) << endl;
    
    return 0;
}
