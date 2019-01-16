//
//  二叉树的中序遍历.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/16.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

extension MyTreeNodeSolution {
    
    //递归
    func inOrderTraversal(_ root: TreeNode?,_ n: inout [Int]) {
        
        if root == nil {
            return
        }
        
        inOrderTraversal(root?.left, &n)
        n.append(root!.val)
        inOrderTraversal(root?.right, &n)
    }
    
    //非递归
    func inOrderTraversal2(_ root: TreeNode?) -> [Int] {
        
        var node = root
        var stack = [TreeNode?]()
        var res = [Int]()
        
        while !stack.isEmpty || node != nil {
            
            if node != nil {
                stack.append(node)
                node = node?.left
            }else {
                node = stack.removeLast()
                res.append(node!.val)
                node = node?.right
            }
        }
        
        return res
    }
}
