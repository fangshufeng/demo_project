//
//  main.cpp
//  Cplusplus
//
//  Created by fangshufeng on 2019/1/21.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#include <iostream>
//#include "Test1.h"

#ifdef __cplusplus

extern "C" {
    void printLog();
}

#endif

using namespace std;

void sum(int a,int b) {
    cout << " sum(int  a)"  << endl;
    
}

void sum(double a,int b) {
    cout << "sum(double a)" << endl;
}

static int max(int a ,int b) {
     return  a > b ? a :b;
}

int main(int argc, const char * argv[]) {

//   int a  = max(10,20);
//    cout << a << endl;
    
    int a = 10;
    int b = 20;
    int c = 30;
    
    int arr[3] = {a, b, c};
    
    void *aa = arr;
    
    int *bb = (int *)aa;
    
    return a;
}
