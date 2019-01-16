//
//  27.二叉搜索树与双向链表.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/16.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For27Solution {
    var leftHead:TreeNode?
    var rightHead:TreeNode?
    func convertTwoWayList(rootNode:TreeNode?) -> TreeNode? {
        convertSubList(rootNode: rootNode)
        return leftHead
    }
    
    func convertSubList(rootNode:TreeNode?) {
        if rootNode == nil {
            return
        }
        convertSubList(rootNode: rootNode?.left)
        
        if rightHead == nil {
            leftHead = rootNode
            rightHead = rootNode
        } else {
            // 右节点和根节点双向指针  注意更新右节点
            rightHead?.right = rootNode
            rootNode?.left = rightHead
            rightHead = rootNode
        }
        
        convertSubList(rootNode: rootNode?.right)
    }
}
