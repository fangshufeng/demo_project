//
//  main.cpp
//  Inherit
//
//  Created by fangshufeng on 2019/2/20.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#include <iostream>

using namespace std;


struct Animal {
    int m_sex;
     void run () {
        cout << "Animal::run" << endl;
    }
    Animal() {
        cout << "Animal::Animal()" << endl;
    }
   virtual ~Animal() {
        cout << "Animal::~Animal()" << endl;
    }
    
    virtual void run2() = 0;
};

struct Dog : public Animal {
    int m_age;
    void run () {
        cout << "Dog::run" << endl;
    }
    Dog() {
        cout << "Dog::Dog()" << endl;
    }
    ~Dog() {
        cout << "Dog::~Dog()" << endl;
    }
    
    void run2() {};
};

int main(int argc, const char * argv[]) {

    Animal *dog = new Dog;
    delete dog;
    
    getchar();
    return 0;
}
