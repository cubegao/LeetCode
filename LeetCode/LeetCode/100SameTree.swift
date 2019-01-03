

//
//  100SameTree.swift
//  LeetCode
//
//  Created by Gaowz on 2018/12/18.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//
/*
 给定两个二叉树，编写一个函数来检验它们是否相同。
 
 如果两个树在结构上相同，并且节点具有相同的值，则认为它们是相同的。
 
 示例 1:
 
 输入:
   1         1
  / \       / \
 2   3     2   3
 
 [1,2,3],   [1,2,3]

 输出: true
 */

import Foundation

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class IsSameTreeSolution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        
        if p == nil && q == nil { return true}
        
        if p != nil && q != nil && q?.val == p?.val {
            return isSameTree(p?.left,q?.left)&&isSameTree(p?.right,q?.right)
        }else {
            return false
        }
    }
}
