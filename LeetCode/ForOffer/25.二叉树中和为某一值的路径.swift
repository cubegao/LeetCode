//
//  25.二叉树中和为某一值的路径.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/14.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For25Solution {
    func treeValSum(_ root: TreeNode?,_ n: Int) {
        
        var res = [[Int]]()
        let path = [Int]()
        pathHelper(root, &res, path, n)
        
        print(res)
    }
    
    func pathHelper(_ root: TreeNode?,_ res: inout [[Int]],_ paths: [Int],_ sum: Int) {
        if root == nil {
            return
        }
        
        var path = paths
        path.append(root!.val)
        
        if root?.left != nil {
            pathHelper(root?.left, &res, path,sum)
        }
        
        if root?.right != nil {
            pathHelper(root?.right, &res, path,sum)
        }
        
        if root?.left == nil && root?.right == nil {
            if path.reduce(0, +) == sum {
                res.append(path)
            }
        }
        
    }
}
