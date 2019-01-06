//
//  10.二进制中1的个数.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/6.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For10Solution {
    func findOne(_ n: Int) -> Int {
        var s = n
        var count = 0
        
        while s != 0 {
            if s & 1 == 1 {
                count += 1
            }
            
            s = s>>1
        }
        
        return count
    }
    
    func findOne2(_ n: Int) -> Int {
        var s = n
        var count = 0
        
        while s != 0 {
            count += 1
            s = s & (s - 1)
        }
        
        return count
    }
}
