//
//  main.m
//  BaseOcSyntaxDemo
//
//  Created by fangshufeng on 2019/3/8.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Person.h"

using namespace std;

//#include <stdlib.h>
//#include <atexit.h>


//
//void ^ () block = ^ {
//    printf("this is block");
//}

__attribute__((constructor)) static void beforeFunction()
{
    printf("beforeFunction\n");
}

//



class CA{
public:
    CA(){
        printf("CA::CA()\n");
    }

     ~CA(){
        printf("CA::~CA()\n");
    }
};

CA fangshufeng;

//CA fangshufeng2;


Person *person = [[Person alloc] init];


//NSString *name = [NSString stringWithFormat:@"方"];
//void (^block) ()  = ^ {
//    printf("this is block\n");
//};
//
void foo1()
{
    printf("foo1---%p\n",person);
}
//
//void foo2()
//{
//    printf("foo2\n");
//}
//
//
void foo3(void * a)
{
    
    printf("foo3===\n");
}

int main(int argc, char * argv[]) {
    @autoreleasepool {
        printf("person---%p\n",person);
        
        {
            Person *p = [[Person alloc] init];
        
            printf("p---%p---%p\n",p,&p);
        }
        atexit(&foo1);
//        atexit(&foo2);
        //        atexit_b(block);
        
        printf("main\n");
        
//        Person *p = [[Person alloc] init];
//        [p performSelector:@selector(ddd)];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

__attribute__((destructor)) static void afterFunction()
{
    printf("afterFunction-%p\n",person);
}
