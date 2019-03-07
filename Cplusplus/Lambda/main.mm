//
//  main.cpp
//  Lambda
//
//  Created by fangshufeng on 2019/3/4.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#include <iostream>
#include <stack>
#include <queue>
#include <deque>
#include <map>

using namespace std;

int main(int argc, const char * argv[]) {
    

    
//   int (*a) (int)  = [](int a) mutable throw() -> int  {
//        cout << "dasd" << endl;
//        return 0;
//    };
//
//    a(1);
    
    int a = 20;
    int b = 10;
    
   auto test = [a,b] {
        cout << a << endl;
        cout << b << endl;
    };
    
    auto tmp = [=] {
        cout << a << endl;
    };
    
    tmp();

    test();
    
    queue<int> c;
    
    c.push(1);
    c.push(2);
    c.push(3);

    
    c.pop();
    
    
    
    return 0;
}
