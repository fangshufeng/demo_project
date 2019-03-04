//
//  main.cpp
//  LinkList
//
//  Created by fangshufeng on 2019/3/4.
//  Copyright © 2019 fangshufeng. All rights reserved.
//

#include <iostream>

/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode(int x) : val(x), next(NULL) {}
 * };
 
 两两交换链表的节点
 
 */

using namespace std;

struct ListNode {
         int val;
         ListNode *next;
         ListNode(int x) : val(x), next(NULL) {}
};

void printV(ListNode *head);

class Solution {
public:
    ListNode* swapPairs(ListNode* head) {
        
        ListNode *rV = head->next;
        ListNode *next = nullptr;
        ListNode *last = nullptr;
        while(head && head-> next) {
            
            next  = head -> next;
            head -> next = next -> next;;
            next->next = head;
            
            if (last != nullptr) {
                last->next = next;
            }
            last = head;
            head  = head -> next;
        }
        
        return rV;
        
    }
};

void printV(ListNode *head) {
    
    while (head) {
        cout << head->val << endl;
        
        head = head->next;
    }
    
}

int main(int argc, const char * argv[]) {
  
    ListNode *node5 = new ListNode(5);
    
    ListNode *node4 = new ListNode(4);
    node4->next = node5;
    
    ListNode *node3 = new ListNode(3);
    node3->next = node4;
    
    ListNode *node2 = new ListNode(2);
    node2->next = node3;
    
    ListNode *node1 = new ListNode(1);
    node1->next = node2;

    Solution sol  = Solution();
//    sol.swapPairs(node1);
    printV(sol.swapPairs(node1));

    
    return 0;
}
