//
//  main.cpp
//  Static
//
//  Created by fangshufeng on 2019/2/22.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#include <iostream>

using namespace std;

class Person {

public:
  static int m_age;
  static  void foo() {
      cout << "Person::foo()" << endl;
  }
};

int Person::m_age = 0 ;

class Student {
    
    static Student *stu;
    Student() {};
    
public:
   static Student * sharedInstance() {
       if (stu == NULL) {
           stu = new Student();
           return stu;
       }
       return stu;
    }
};

Student * Student::stu = NULL;

int main(int argc, const char * argv[]) {
 
//    Student *s =  new Student;
    
    Student *s = Student::sharedInstance();
    Student *s1 = Student::sharedInstance();
    Student *s2 = Student::sharedInstance();
    Student *s3 = Student::sharedInstance();
    
    cout << s << "," << s1 << "," << s2 << "," << s3 << endl;
    
//    Person *p  = new Person();
//    p->m_age = 30;
//    p->foo();
//
//    Person::foo();
//    Person::m_age = 40;;
//
//
//    Person p2;
//    p2.foo();
//    p2.m_age;
    
    return 0;
}
