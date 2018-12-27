//
//  203RemoveLinkedListElements.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/27.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class RemoveElementsSolution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        
        guard head != nil else {
            return head
        }
        let newHead = ListNode.init(0)
        newHead.next = head
        var p = newHead
        while p.next != nil {
            
            if p.next?.val == val {
                p.next = p.next?.next
            }else {
                p = p.next!
            }
        }
        
        return newHead.next
    }
}
