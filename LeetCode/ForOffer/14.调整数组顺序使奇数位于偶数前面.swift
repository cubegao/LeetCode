//
//  14.调整数组顺序使奇数位于偶数前面.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/8.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For14Solution {
    func ReorderOddEven(_ n: [Int]) -> [Int] {
        
        var s = n
        var left = 0
        var right = n.count - 1
        
        while left < right {
            
            while left < right && s[left] % 2 != 0 {
                left += 1
            }
            
            while left < right && s[right] % 2 != 1 {
                right -= 1
            }
            
            let temp = s[left]
            s[left] = s[right]
            s[right] = temp
            
            left += 1
            right -= 1
        }
        
        return s
    }
}
