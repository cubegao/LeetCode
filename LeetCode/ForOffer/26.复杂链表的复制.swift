//
//  26.复杂链表的复制.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/16.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

// ListNode Utils
public class ComplexListNode {
    public var val: Int
    public var next: ComplexListNode?
    public var sibling: ComplexListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
        self.sibling = nil
    }
}

class For26Solution {
    func copyComplexListNode(_ head: ComplexListNode?) -> ComplexListNode {
        
        var p = copyNext(head)
            p = copySibling(p)
            p = partition(p)
        return p
    }
    
    //复制主链
    func copyNext(_ head: ComplexListNode?) -> ComplexListNode {
        
        var pNode = head
        let pHead = head


        while pNode != nil {
            
            let pClone = ComplexListNode(0)
            pClone.val = pNode!.val
            pClone.next = pNode?.next
            pClone.sibling = nil

            pNode?.next = pClone
            
            pNode = pNode?.next
        }
        
        return pHead!
    }
    
    //复制随机指针
    func copySibling(_ head: ComplexListNode?) -> ComplexListNode {
        
        var pNode = head
        let pHead = head
        
        
        while pNode != nil {
            
            let pClone = pNode!.next
            if pNode?.sibling != nil {
                pClone?.sibling = pNode?.sibling?.next
            }
            pNode = pClone?.next
            
        }
        
        return pHead!
    }
    
    //分离两个链表
    func partition(_ head: ComplexListNode?) -> ComplexListNode {
        
        var pNode = head
        var pCloneHead: ComplexListNode? = nil
        var pCloneNode: ComplexListNode? = nil
        
        if pNode != nil {
            pCloneHead = pCloneNode
            pCloneNode = pNode?.next
            pNode?.next = pCloneNode?.next
            pNode = pNode?.next
        }
        
        while pNode != nil {
            pCloneNode?.next = pNode?.next
            pCloneNode = pCloneNode?.next
            pNode?.next = pCloneNode?.next
            pNode = pNode?.next
        }
        
        return pCloneHead!
    }
}
