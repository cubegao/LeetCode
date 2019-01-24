//
//  40.数组中只出现一次的数字.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/24.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For40Solution {
    func appearOnce(_ nums: [Int]) -> Int {
        
        var n = nums[0]
        for i in 1..<nums.count {
            n ^= nums[i]
        }
        
        return n
    }
}
