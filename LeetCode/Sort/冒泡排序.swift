//
//  冒泡排序.swift
//  Sort
//
//  Created by Gaowz on 2018/12/30.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class BubbleSortSolution {
    func sort(_ n: [Int]) -> [Int] {
        
        var nums = n
        
        for i in 0..<n.count {
            
            for j in 0..<n.count-i-1 {
                if nums[j] > nums[j+1] {
                    let temp = nums[j+1]
                    nums[j+1] = nums[j]
                    nums[j] = temp
                }
            }
        }
        
        return nums
    }
}
