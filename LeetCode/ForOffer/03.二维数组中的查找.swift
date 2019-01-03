//
//  03.二维数组中的查找.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/3.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//
// 矩阵

import Foundation

class For03Solution  {
    func find(_ n: [[Int]],_ i: Int) -> Bool {
        
        guard n.count > 0 else {
            return false
        }
        
        var row = 0
        var col = n.first!.count - 1
        
        while row <= n.count - 1 && col >= 0 {
            
            if n[row][col] == i {
                return true
            }else if n[row][col] > i {
                col -= 1
            }else {
                row += 1
            }
        }
        
        return false
    }
}
