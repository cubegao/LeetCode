//
//  206ReverseLinkedList.swift
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

//单链表是一颗永远只有左(右)子树的树，因此可以考虑用递归来解决
class ReverseListSolution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        guard head != nil && head?.next != nil else {
            return head
        }
        
        let newHead = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
     
        return newHead
    }
}
