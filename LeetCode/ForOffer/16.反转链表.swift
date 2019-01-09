//
//  16.反转链表.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/9.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For16Solution {
    func reversedListNode(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        var prev = head
        var cur = head?.next
        var temp = head?.next?.next
        
        while cur != nil {
            temp = cur?.next
            cur?.next = prev
            prev = cur
            cur = temp
        }
        
        
        head?.next = nil
        
        return prev
    }
    
    func reversedListNode2(_ head: ListNode?) -> ListNode? {

        if head == nil || head?.next == nil {
            return nil
        }
        
        let newHead = reversedListNode(head?.next)
        head?.next?.next = head
        head?.next = nil
        
        return newHead
    }
}
