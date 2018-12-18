//
//  107BinaryTreeLevelOrderTraversalII.swift
//  LeetCode
//
//  Created by Gaowz on 2018/12/18.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//
/*
 给定一个二叉树，返回其节点值自底向上的层次遍历。 （即按从叶子节点所在层到根节点所在的层，逐层从左向右遍历）
 
 例如：
 给定二叉树 [3,9,20,null,null,15,7],
 
 3
 / \
 9  20
 /  \
 15   7
 返回其自底向上的层次遍历为：
 
 [
 [15,7],
 [9,20],
 [3]
 ]

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
class LevelOrderBottomSolution {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        levelOrder(root, 0, &res)
        return res.reversed()
    }
    
    func levelOrder(_ root: TreeNode?, _ level: Int, _ res: inout [[Int]]) {
        if root == nil {
            return
        }
        if res.count == level {
            res.append([])
        }
        res[level].append(root!.val)
        print(res)
        if root?.left != nil {
            levelOrder(root?.left, level+1, &res)
        }
        if root?.right != nil {
            levelOrder(root?.right, level+1, &res)
        }
        
    }
}
