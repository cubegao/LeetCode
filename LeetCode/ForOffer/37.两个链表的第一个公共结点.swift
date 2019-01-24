//
//  37.两个链表的第一个公共结点.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/24.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For37Solution {
    func findFirstCommonNode(_ head1: ListNode?,_ head2: ListNode?) -> ListNode {
        
        var pHead = head1
        var qHead = head2
        
        var pLen = 0
        var qLen = 0
        
        while pHead?.next != nil {
            pHead = pHead?.next
            pLen += 1
        }
        
        while qHead?.next != nil {
            qHead = qHead?.next
            qLen += 1
        }
        
        var pHead1 = head1
        var qHead2 = head2
        var len = pLen - qLen
        if len > 0 {
            while len >= 0 {
                pHead1 = pHead1?.next
                len -= 0
            }
        }else {
            len = -len
            while len >= 0 {
                qHead2 = qHead2?.next
                len -= 0
            }
        }
        
        while pHead1?.next != nil && qHead2?.next != nil {
            
            if pHead1 === qHead2 {
                return pHead1!
            }
            
            pHead1 = pHead1?.next
            qHead2 = qHead2?.next
        }
        
        
        //没有公共结点
        return ListNode(0)
        
    }
}
