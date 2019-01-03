//
//  234PalindromeLinkedList.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/29.
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
class IsPalindrome2Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        
        if head == nil || head?.next == nil {
            return true
        }
        
        var p = head
        let middle = findMiddle(head!)
        var q = reverse(middle?.next)
        
        while q != nil {
            if q?.val != p?.val {
                return false
            }
            
            q = q?.next
            p = p?.next
        }
        
        return true
    }
    
    func findMiddle(_ head: ListNode?) -> ListNode? {
        var fast = head, low = head
        while low?.next != nil && fast?.next?.next != nil {
            fast = fast?.next?.next
            low = low?.next
        }
        
        return low
    }
    
    func reverse(_ head: ListNode?) -> ListNode? {
        guard head?.next != nil else {
            return head
        }
        
        let newHead = reverse(head?.next)
        head?.next?.next = head
        head?.next = nil
        
        return newHead
    }
}
