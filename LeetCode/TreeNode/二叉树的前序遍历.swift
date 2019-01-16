//
//  二叉树的前序遍历.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/16.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class MyTreeNodeSolution {
    
    //递归
    func preorderTraversal(_ root: TreeNode?,_ n: inout [Int]) {
        
        if root == nil {
            return
        }
        
        n.append(root!.val)
        preorderTraversal(root?.left, &n)
        preorderTraversal(root?.right, &n)
    }
    
    //非递归
    func preorderTraversal2(_ root: TreeNode?) -> [Int] {
        
        var node = root
        var stack = [TreeNode?]()
        var res = [Int]()
        
        while !stack.isEmpty || node != nil {
            
            if node != nil {
                res.append(node!.val)
                stack.append(node)
                node = node?.left
            }else {
                node = stack.removeLast()?.right
            }
        }
        
        return res
    }
}
