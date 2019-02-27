//
//  main.cpp
//  对象类型的参数和返回值
//
//  Created by fangshufeng on 2019/2/26.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#include <iostream>

using namespace std;


class Person {
    
public:
    
    int m_age;
    int m_height;
    
    Person() {
        cout << "Person:Person()" << endl;
    }
    
    Person(int age):m_age(age) {
        cout << "Person:Person(int age)" << endl;
    }
    
    Person(int age,int height):m_age(age), m_height(height) {
        cout << "int age,int height" << endl;
    }

    
    Person(const Person &person) {
        cout << "Person:Person(const Person &person)" << endl;
    }
    
    ~Person() {
         cout << "Person:~Person()" << endl;
    }
    
    void display() {
        cout << m_age << m_height << endl;
    }
};



void test(const Person &p) {
    
}

Person test2() {
    Person p;
    p.m_age = 30;
    return p;
}

int main(int argc, const char * argv[]) {

    Person p = 10;
    p.display();
//    Person p;
//    test(p);
    
//    Person p2 = test2();
//    p2.display();
    return 0;
}
