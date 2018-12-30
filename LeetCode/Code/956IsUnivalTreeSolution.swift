//
//  000erchashu.swift
//  LeetCode
//
//  Created by Gaowz on 2018/12/30.
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
class IsUnivalTreeSolution {
    func isUnivalTree(_ root: TreeNode?) -> Bool {
        
        if root == nil {
            return true
        }
        
        if root?.left != nil && root?.val != root?.left?.val {
            return false
        }
        
        if root?.right != nil && root?.val != root?.right?.val {
            return false
        }
        
        return isUnivalTree(root?.left) && isUnivalTree(root?.right)
    }
}
