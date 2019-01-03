//
//  257BinaryTreePaths.swift
//  LeetCode
//
//  Created by Gaowz on 2018/12/29.
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
class BinaryTreePathsSolution {
    func binaryTreePaths(_ root: TreeNode?) -> [String] {
        
        if root == nil {
            return []
        }
        
        let left = binaryTreePaths(root?.left)
        let right = binaryTreePaths(root?.right)

        if left.isEmpty && right.isEmpty {
            return ["\(root!.val)"]
        }
        
        return (left + right).map{"\(root!.val)->" + $0}
    }
    
}
