//
//  main.cpp
//  菱形继承
//
//  Created by fangshufeng on 2019/2/21.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#include <iostream>

using namespace std;

class Person {
    
public:
    int age;
};

class Student : virtual public Person {
public:
    int m_score ;
};

class Worker : virtual public Person {
public:
    int m_salary;
};

class Test : virtual public Person {
public:
    int m_test;
};

class Undergraduate : public Student, public Worker , public Test{
public:
    int m_grade;
};

int main(int argc, const char * argv[]) {
    
//    Undergraduate *undergraduate = new Undergraduate();
// undergraduate->age = 50;
//    undergraduate->m_score = 10;
//    undergraduate->m_salary = 20;
//    undergraduate->m_grade = 30;
//    undergraduate->m_test = 40;
//
//
//
//    cout << sizeof(Undergraduate) << endl;

   //  0x100001098 20 00 00 00 00 00 00 00 // 0 20=32
    // 0x1000010B0 10 00 00 00 00 00 00 00 // 0 10 = 16
    // 0x1000010C8 00 00 00 00 00 00 00 00 // 0 0
    
    Student *stu = new Student();
    stu->age = 20;
    stu->m_score = 30;
    
//    48 10 00 00 01 00 00 00 0x0000000100001048  100001060
//    1E 00 00 00
//    14 00 00 00
//    getchar();
    /*
     0x00948F90  40 9b ec 00  @??. // 0x00ec9b40 20 14
     0x00948F94  0a 00 00 00  ....
     0x00948F98  48 9b ec 00  H??. // 0x00ec9b48 12 c
     0x00948F9C  14 00 00 00  ....
     0x00948FA0  1e 00 00 00  ....
     0x00948FA4  28 00 00 00
     */
    return 0;
}
