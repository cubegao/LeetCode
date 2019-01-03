
//
//  136SingleNumber.swift
//  LeetCode
//
//  Created by Gaowz on 2018/12/22.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class SingleNumberSolution {
    func singleNumber(_ nums: [Int]) -> Int {
        
        var res = 0
        for num in nums {
            res ^= num
        }
        
        return res
    }
}
