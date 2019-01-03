

//
//  101SymmetricTree.swift
//  LeetCode
//
//  Created by Gaowz on 2018/12/18.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//
/*
 给定一个二叉树，检查它是否是镜像对称的。
 
 例如，二叉树 [1,2,2,3,4,4,3] 是对称的。
 
     1
    / \
   2   2
  / \ / \
 3  4 4  3
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
class IsSymmetricSolution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return isMirrorTree(root, root)
    }
    
    func isMirrorTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }
        
        if p?.val == q?.val {
            return isMirrorTree(p?.left,q?.right)&&isMirrorTree(p?.right,q?.left)
        }else {
            return false
        }
    }
}


