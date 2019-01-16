//
//  二叉树的后序遍历.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/16.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

extension MyTreeNodeSolution {
    
    //递归
    func postOrderTraversal(_ root: TreeNode?,_ n: inout [Int]) {
        if root == nil {
            return
        }
        
        postOrderTraversal(root?.left, &n)
        postOrderTraversal(root?.right, &n)
        n.append(root!.val)
    }
    
    //非递归
    //1.左孩子和右孩子都没有，可以访问该节点
    //2.存在左孩子或者右孩子，均被访问了，才能访问该节点
    //入栈顺序，先右再左。按出栈顺序来
    func postOrderTraversal2(_ root: TreeNode?) -> [Int] {
        
        var stack = [TreeNode?]()
        var cur: TreeNode?
        var pre: TreeNode? = nil
        var res = [Int]()
        
        
        stack.append(root)
        while !stack.isEmpty {
            
            cur = stack.last!
            if (cur?.left == nil && cur?.right == nil) || (pre != nil && (pre === cur?.left || pre === cur?.right)) {
                res.append(stack.removeLast()!.val)
                pre = cur
            }else {
                if cur?.right != nil {
                    stack.append(cur!.right)
                }
                
                if cur?.left != nil {
                    stack.append(cur!.left)
                }
            }
        }
        
        return res
    }
}
