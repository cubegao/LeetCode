//
//  选择排序.swift
//  Sort
//
//  Created by Gaowz on 2018/12/31.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class SelectSortSolution {
    func sort(_ n: [Int]) -> [Int] {
        
        var s = n
        
        
        for i in 0..<s.count {
            
            let j = i + 1
            var min = s[i]
            var indexMin = i
            for r in j..<s.count {
                if min > s[r] {
                    min = s[r]
                    indexMin = r
                }
            }
            
            let temp = s[i]
            s[i] = s[indexMin]
            s[indexMin] = temp
        }
        
        return s
        
    }
}
