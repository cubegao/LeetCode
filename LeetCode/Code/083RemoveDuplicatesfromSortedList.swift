

//
//  083RemoveDuplicatesfromSortedList.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/18.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

/*
 给定一个排序链表，删除所有重复的元素，使得每个元素只出现一次。
 
 示例 1:
 
 输入: 1->1->2
 输出: 1->2
 示例 2:
 
 输入: 1->1->2->3->3
 输出: 1->2->3
 */

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
class DeleteDuplicatesSolution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        
        var last = head
        while last?.next != nil {
            if last?.val == last?.next?.val {
                last?.next = last?.next?.next
            }else {
                last = last?.next
            }
        }
        
        return head
    }
}
