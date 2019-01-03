//
//  112PathSum.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/21.
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
class HasPathSumSolution {
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        if root == nil || testTreeIsEmpty(root!){
            return false
        }
        if root?.left == nil && root?.right == nil && root?.val == sum {
            return true
        }
        var sums = sum
        sums -= root!.val
        return hasPathSum(root?.left,sums) || hasPathSum(root?.right,sums)
    }
}
