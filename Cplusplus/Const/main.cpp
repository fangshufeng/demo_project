//
//  main.cpp
//  Const
//
//  Created by fangshufeng on 2019/2/22.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#include <iostream>

using namespace std;


class Person {
  
public:
   const int m_age = 40;
    
    Person (int age):m_age(age) {
        
    }

    void run() const {
        cout << this-> m_age <<endl;
    };
};

int main(int argc, const char * argv[]) {
  
    Person *p = new Person(20);
//    p->m_age = 40;
    p->run();
    
//   cout << p->m_age << endl;
    
    //Person::m_age;
    
    return 0;
}
