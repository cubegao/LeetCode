//
//  27.二叉搜索树与双向链表.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/16.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation


//中序遍历，节点互指
class For27Solution {
    
    var head:TreeNode?
    var lastNode:TreeNode?
    
    func convertTwoWayList(_ root:TreeNode?) -> TreeNode? {
        convertSubList(root)
        return head
    }
    
    func convertSubList(_ root:TreeNode?) {
        if root == nil {
            return
        }
        convertSubList(root?.left)
        
        if lastNode == nil {
            head = root
            lastNode = root
        } else {
            //前一个节点和当前节点（root）互指，然后到下一个
            root?.left = lastNode
            lastNode?.right = root
            lastNode = root
            
        }
        
        convertSubList(root?.right)
    }
}
