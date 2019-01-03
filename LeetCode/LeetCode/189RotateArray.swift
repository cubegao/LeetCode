//
//  189RotateArray.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/26.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class RotateSolution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        guard nums.count != k && k != 0 else {
            return
        }
        
        var left = 0
        var ks = k % nums.count
        while left < nums.count - 1 {
            
            if nums.count - left < ks {
                ks = ks % (nums.count - left)
                if ks == 0 {return }
            }
            
            for i in 0..<ks {
                let temp = nums[left]
                nums[left] = nums[nums.count - ks + i]
                nums[nums.count - ks + i] = temp
                left += 1
            }
            
        }
        
    }
}
