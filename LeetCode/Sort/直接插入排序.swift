//
//  直接插入排序.swift
//  Sort
//
//  Created by Gaowz on 2018/12/30.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class InsertSortSolution {
    func sort(_ n: [Int]) -> [Int] {
        
        var nums = n
        for i in 0..<nums.count {
            var j = i
            while j-1>=0 && nums[j] < nums[j-1]  {
                let temp = nums[j]
                nums[j] = nums[j-1]
                nums[j-1] = temp
                j -= 1
            }
            
        }
        
        return nums
        
    }
}
