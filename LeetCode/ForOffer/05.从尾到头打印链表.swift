//
//  05.从尾到头打印链表.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/3.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For05Solution {
    func printListNode(_ head: ListNode?) {
        
        if head?.next != nil {
            printListNode(head?.next)
        }
        
        print(head!.val)
    }
}
