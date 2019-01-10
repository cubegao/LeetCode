//
//  18.树的子结构.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/10.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For18Solution {
    func isSubTreeNode(_ pRoot: TreeNode?,_ qRoot: TreeNode?) -> Bool {
        
        var res = false
        
        if pRoot != nil && qRoot != nil {
            if pRoot?.val == qRoot?.val {
                res = runSubTreeNode(pRoot, qRoot)
            }
            
            if !res {
                res = isSubTreeNode(pRoot?.left, qRoot)
            }
            
            if !res {
                res = isSubTreeNode(pRoot?.right, qRoot)
            }
        }
        
        return res
        
    }
    
    func runSubTreeNode(_ pRoot: TreeNode?,_ qRoot: TreeNode?) -> Bool {
        
        if qRoot == nil {
            return true
        }
        
        if pRoot == nil {
            return false
        }
        
        if pRoot?.val != qRoot?.val {
            return false
        }
        
        return runSubTreeNode(pRoot?.left,qRoot?.left)&&runSubTreeNode(pRoot?.right,qRoot?.right)
    }
}
