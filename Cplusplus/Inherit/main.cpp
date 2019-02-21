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
    virtual void run () {
        cout << "Animal::run" << endl;
    }
};

struct Dog : public Animal {
    int m_age;
    void run () {
        cout << "Dog::run" << endl;
    }
};

int main(int argc, const char * argv[]) {

    Animal *dog = new Dog;
    dog->run();
    getchar();
    return 0;
}
