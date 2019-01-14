//
//  23.从上往下打印二叉树.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/14.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For23Solution {
    func printTreeNode(_ root: TreeNode?) {
        
        var queue: [TreeNode?] = [TreeNode]()
        
        queue.append(root)
        while !queue.isEmpty {
            
            let newRoot = queue.removeFirst()
            print(newRoot?.val ?? 0)
            
            if newRoot?.left != nil {
                queue.append(newRoot?.left)
            }
            
            if newRoot?.right != nil {
                queue.append(newRoot?.right)
            }
        }
        
    }
}
