//
//  39.二叉树的深度.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/24.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For39Solution {
    func treeDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        
        return max(treeDepth(root?.left), treeDepth(root?.right)) + 1
    }
}
