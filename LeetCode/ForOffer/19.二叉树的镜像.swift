//
//  19.二叉树的镜像.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/10.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For19Solution {
    func mirrorTreeNode(_ root: TreeNode?) -> TreeNode? {
        
        if root == nil || (root?.left == nil && root?.right == nil) {
            return nil
        }
        
        let temp = root?.left
        root?.left = root?.right
        root?.right = temp
        
        if root?.left != nil {
            mirrorTreeNode(root?.left)
        }
        
        if root?.right != nil {
            mirrorTreeNode(root?.right)
        }
        
        return root
    }
}
