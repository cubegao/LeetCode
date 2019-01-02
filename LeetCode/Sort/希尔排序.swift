//
//  希尔排序.swift
//  Sort
//
//  Created by Gaowz on 2019/1/2.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class ShellSortSolution {
    func sort(_ n: [Int]) -> [Int] {
        
        var s = n
        var gap = n.count/2
        
        while gap > 0 {
            
            var i = gap
            while i < n.count {
                
                var j = i
                while j > 0 && j - gap >= 0 {
                    
                    if s[j - gap] > s[j] {
                        let temp = s[j]
                        s[j] = s[j - gap]
                        s[j - gap] = temp
                    }else {
                        break
                    }
                    
                    j -= gap
                }
                
                i += 1
            }
            
            gap /= 2
        }
        
        return s
    }
}
