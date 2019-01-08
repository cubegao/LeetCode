//
//  13.在0(1)时间删除链表节点.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/8.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For13Solution {
    func deleteNode(_ head: ListNode?,_ pDeleted: ListNode?) -> ListNode? {
        
        var p = head
        
        if p == nil || pDeleted == nil {
            return p
        }
        
        if pDeleted?.next != nil {
            //删除的不是尾节点
            pDeleted?.val = (pDeleted?.next?.val)!
            pDeleted?.next = pDeleted?.next?.next
        }else if p === pDeleted {
            //删除的是头结点,只有一个节点
            p = nil
        } else {
            //删除的是尾节点
            let s = p
            while p?.next !== pDeleted {
                p = p?.next
            }
            p?.next = nil
            p = s
        }
        
        return p
    }
}
