//
//  44.扑克牌的顺子.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/31.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For44Solution {
    func puke(_ nums: [Int]) -> Bool {
        
        var zero = 0
        var n = 0 //间隔
        
        var last = -1
        for i in nums.sorted() {
            if i == 0 {
                zero += 1
            }
            
            if last == i && last != 0 {
                return false
            }
            
            if last != -1 {
                n +=  i - last - 1
            }
            
            if i != 0 {
                last = i
            }
        }
        
        return zero >= n
    }
}
