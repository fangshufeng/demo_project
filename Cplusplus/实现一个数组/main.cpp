//
//  main.cpp
//  实现一个数组
//
//  Created by fangshufeng on 2019/3/3.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#include <iostream>

using namespace std;

template <class T> class Array ;

template <class T> ostream &operator<< (ostream &cout, const Array<T> &array );

template <class T>
class Array {

    friend ostream &operator << <T>(ostream &, const Array<T> & ) ;
    int _capacity = 0;
    T *_item;
    int _count = 0;

public:

    Array(int capacity) {
        this->_item = new T[capacity];
        this->_capacity = capacity;

        cout << "Array(int capacity)   " << endl;
    };

    ~Array() {
        delete [] this->_item;
        this->_item = nullptr;
        cout << "~Array()   " << endl;
    };

    int count () {
        return this->_count;
    };

    T get(int index)  throw(const char *)  {

        if(index >= _capacity) throw "数组越界";

        if(index >= _count) _item[index] = NULL;

        return _item[index];
    };

    void add(T item) throw(const char *) {
        if (_count >= _capacity) {
            throw "数组越界";
        }
        _item[_count ++] = item;
    };

    void insertObj(T item,int index)  throw(const char *) {
        if(index < 0 || index > _capacity) {
            throw "无效的index";
        }

        if(_count == _capacity) {
            throw "不能再插入数据";
        }

        if(index > _count -1 ) {
            throw "没有对应的index";
        }

        for(int i = _count ; i > index ; i --) {
            _item[i] = _item[i-1];
        }

        _item[index] = item;
        _count ++;
    }

    void removeObj(int index) {

        for(int i = index ; i < _count - 1  ; i ++) {
            _item[i] = _item[i+1];
        }

        _count --;

    }

    T operator[](int index) {
       return get(index);
    }
};

template <class T>
ostream &operator<< (ostream &cout, const Array<T> &array ) {

    cout << "[";
    for (int i = 0; i < array._count; i++) {
        if (i != 0) {
            cout << ",";
        }
        cout << array._item[i];
    }
    cout << "]";;
    return cout;
}


int main(int argc, const char * argv[]) {
    

    
//    // 增加元素
//    Array<int> array(5);
//    try {
//        array.add(1);
//        array.add(2);
//        array.add(3);
//        array.add(4);
//        array.add(5);
//        array.add(6);
//    } catch(const char * e) {
//        cout << e  << endl;
//    }
//
    // 插入元素
    Array<int> array(5);
    array.add(0);
    array.add(2);
    array.insertObj(1, 1);
    array.add(3);

    // 删除元素
    array.removeObj(3);
//
//    // 查询元素
//    cout << array.count() << endl;
//    cout << array.get(0) << endl;
//    cout << array.get(1) << endl;
//    cout << array.get(2) << endl;
//    cout << array.get(3) << endl;
//
//
    // 直接输出对象
    cout << array << endl;
    // 通过下表获取
    cout << array[0] << endl;;
    return 0;
}
