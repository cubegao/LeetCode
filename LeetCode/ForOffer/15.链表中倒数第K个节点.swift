//
//  15.链表中倒数第K个节点.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/9.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For15Solution {
    func reversedK(_ head: ListNode?,_ k: Int) -> ListNode? {
        
        guard head != nil && k != 0 else {
            return nil
        }
        
        var i = 0
        var p = head
        var q = head
        
        while p?.next != nil {
            
            p = p?.next
            
            if i >= k - 1 {
                q = q?.next
            }
            
            i += 1
        }
        
        if i < k - 1 {
            return nil
        }
        
        return q
    }
}
