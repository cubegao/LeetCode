//
//  31.连续子数组的最大和.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/23.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For31Solution {
    func maxSubArray(_ n: [Int]) -> Int {
        
        if n.count == 0 {
            return 0
        }
        
        var current = 0
        var sum = Int.min
        
        for i in n {
            if current < 0 {
                current = i
            }else {
                current += i
            }
            
            if current > sum {
                sum = current
            }
        }
        
        return sum
    }
    
    
    func maxSubArray2(_ n: [Int]) -> Int {
        
        var current = 0
        var sum = Int.min
        
        for i in n {
            current = max(i, current+i)
            sum = max(current, sum)
        }
        
        return sum
    }

}
