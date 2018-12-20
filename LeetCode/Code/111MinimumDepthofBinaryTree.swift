//
//  111MinimumDepthofBinaryTree.swift
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
class MinDepthSolution {
    func minDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        if root?.left == nil {
            return minDepth(root?.right) + 1
        }
        
        if root?.right == nil {
            return minDepth(root?.left) + 1
        }
        
        return 1 + min(minDepth(root?.left), minDepth(root?.right))
    }
}
