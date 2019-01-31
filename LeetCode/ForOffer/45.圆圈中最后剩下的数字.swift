//
//  45.圆圈中最后剩下的数字.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/31.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For45Solution {
    func deleteNum(_ n: Int,_ m: Int) -> Int {
        var nums = [Int]()
        
        for i in 0...n {
            nums.append(i)
        }
        
        var index = 0
        var mCount = 1
        
        while nums.count != 1 {
            
            if mCount == m {
                nums.remove(at: index)
                index -= 1 //防止重复+
                mCount = 1
            }else {
                mCount += 1
            }
            
            index += 1
            if index == nums.count {
                index = 0
            }
        }
        
        return nums[0]
    }
}
