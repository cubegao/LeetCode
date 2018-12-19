

//
//  108ConvertSortedArraytoBinarySearchTree.swift
//  LeetCode
//
//  Created by Gaowz on 2018/12/19.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//
/*
 将一个按照升序排列的有序数组，转换为一棵高度平衡二叉搜索树。
 
 本题中，一个高度平衡二叉树是指一个二叉树每个节点 的左右两个子树的高度差的绝对值不超过 1。
 
 示例:
 
 给定有序数组: [-10,-3,0,5,9],
 
 一个可能的答案是：[0,-3,9,-10,null,5]，它可以表示下面这个高度平衡二叉搜索树：
 
 0
 / \
 -3   9
 /   /
 -10  5
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
class SortedArrayToBSTSolution {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        var num = nums
        return doSortedArrayToBST(&num, 0, num.count-1)
    }
    
    //如果将二叉搜索树按中序遍历的话，得到的就是一个有序数组了。那么反过来，我们可以得知，根节点应该是有序数组的中间点，从中间点分开为左右两个有序数组，在分别找出其中间点作为原中间点的左右两个子节点，这不就是是二分查找法的核心思想么。
    func doSortedArrayToBST(_ nums: inout [Int], _ left: Int, _ right: Int) -> TreeNode? {
        if left > right {
            return nil
        }
        let mid = ( left + right ) / 2
        var cur = TreeNode.init(nums[mid])
        cur.left = doSortedArrayToBST(&nums, left, mid - 1)
        cur.right = doSortedArrayToBST(&nums, mid + 1, right)
        return cur
    }
}
