//
//  main.cpp
//  运算符重载
//
//  Created by fangshufeng on 2019/2/27.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#include <iostream>

using namespace std;


class Point {
    int m_x;
    int m_y;

public:
    Point(int x,int y) : m_x(x),m_y(y){};
    
    Point(const Point &p ) {
        cout << " Point(const Point &p )  "<< endl;
    }
    
    bool operator==(const Point &p) const {
        return  (m_x == p.m_x) && (m_y == p.m_y);
    }
    
    Point operator+(const Point &p) const {
         return Point(m_x + p.m_x, m_y + p.m_y);
    }
    
    
    void display() {
        cout << "(" << this->m_x << "," << this->m_y << ")" << endl;
    }
};

int main(int argc, const char * argv[]) {

    
  const Point p1  = Point(1,2);
    Point p2  = Point(1,2);
    
    Point p3 = p1 + p2 ;
    
    p3.display();
    
//   const Point p1  = Point(1,2);
//    Point p2  = Point(10,2);
//
//    if (p1 == p2) {
//        cout << "相等" << endl;
//    } else {
//        cout << "不相等" << endl;
//    }

 
    return 0;
}
