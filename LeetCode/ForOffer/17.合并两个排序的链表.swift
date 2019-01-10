//
//  17.合并两个排序的链表.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/9.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For17Solution {
    func mergeListNode(_ head1: ListNode?,_ head2: ListNode?) -> ListNode? {
        
        if head1 == nil {
            return head2
        }
        
        if head2 == nil {
            return head1
        }
        
        var newHead : ListNode? = nil
        var pHead = head1
        var qHead = head2
        
        if pHead!.val < qHead!.val {
            newHead = pHead
            pHead = pHead?.next
        }else {
            newHead = qHead
            qHead = qHead?.next
        }
        
        var tempHead = newHead
        while pHead != nil && qHead != nil {
            
            if pHead!.val < qHead!.val {
                tempHead?.next = pHead
                pHead = pHead?.next
            }else {
                tempHead?.next = qHead
                qHead = qHead?.next
            }
            tempHead = tempHead?.next
        }
        
        if pHead != nil {
            tempHead?.next = pHead
        }
        
        if qHead != nil {
            tempHead?.next = qHead
        }
        
        return newHead
        
    }
    
    func mergeListNode2(_ head1: ListNode?,_ head2: ListNode?) -> ListNode? {

        if head1 == nil {
            return head2
        }
        
        if head2 == nil {
            return head1
        }
        
        var newHead: ListNode? = nil
        
        if head1!.val < head2!.val {
            newHead = head1
            newHead?.next = mergeListNode2(head1?.next, head2)
        }else {
            newHead = head2
            newHead?.next = mergeListNode2(head1, head2?.next)
        }
        
        return newHead
    }
}
