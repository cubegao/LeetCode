

//
//  110BalancedBinaryTree.swift
//  LeetCode
//
//  Created by Gaowz on 2018/12/20.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

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
class IsBalancedSolution {
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        if (abs(depthTree(root?.left)-depthTree(root?.right))>1) {
            return false
        }
        return isBalanced(root?.left)&&isBalanced(root?.right)
    }
    
    func depthTree(_ root: TreeNode?) -> Int {
        if root == nil ||  treeIsEmpty(root!){
            return 0
        }
        return 1 + max(depthTree(root?.left), depthTree(root?.right))
    }
}
