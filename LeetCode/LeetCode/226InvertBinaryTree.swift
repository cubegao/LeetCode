//
//  226InvertBinaryTree.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/28.
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
class InvertTreeSolution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        
        if root == nil {
            return nil
        }
        
        exchangeTree(root)
        root?.left = invertTree(root?.left)
        root?.right = invertTree(root?.right)
        return root
    }
    
    func exchangeTree(_ root: TreeNode?){
        if root == nil {
            return 
        }
        
        let right = root?.left
        root?.left = root?.right
        root?.right = right
    }
}
