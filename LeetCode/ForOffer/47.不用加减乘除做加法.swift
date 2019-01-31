//
//  47.不用加减乘除做加法.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/31.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For47Solution {
    func addSum(_ a: Int,_ b: Int) -> Int {
        var n1 = a
        var n2 = b
        
        while n2 != 0 {
            let sum = n1 ^ n2
            let carry = (n1 & n2) << 1
            n1 = sum
            n2 = carry
        }
        
        return n1
    }
}
