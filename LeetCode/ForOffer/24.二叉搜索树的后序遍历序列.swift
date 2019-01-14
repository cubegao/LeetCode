//
//  24.二叉搜索树的后序遍历序列.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/14.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For24Solution {
    func isPostOrder(_ n: [Int],_ len: Int) -> Bool {
        
        if n.count == 0 || len == 0 {
            return false
        }
        
        let root = n[len - 1]
        
        var i = 0
        while n[i] < root && i < len - 1 {
            i += 1
        }
        
        var j = i
        while j < len - 1 {
            if n[j] < root {
                return false
            }
            j += 1
        }
        
        var left = true
        if i > 0 {
            left = isPostOrder(n, i)
        }
        
        var right = true
        if i < len - 1 {
            right = isPostOrder(Array(n[i...j]), j - i)
        }
        
        return left && right
    }
}
