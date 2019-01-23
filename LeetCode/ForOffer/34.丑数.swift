//
//  34.丑数.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/23.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For34Solution {
    func kUglyNum(_ k: Int) -> Int {
        
        if k <= 0 {
            return 0
        }
        
        var uglyNums = [Int]()
        
        uglyNums.append(1)
        var ugly2 = 0
        var ugly3 = 0
        var ugly5 = 0
        var current = 1
        
        
        while current < k {
            
            let minUgly = min(uglyNums[ugly2]*2, uglyNums[ugly3]*3, uglyNums[ugly5]*5)
            uglyNums.append(minUgly)
            
            while uglyNums[ugly2]*2 <= minUgly {
                ugly2 += 1
            }
            while uglyNums[ugly3]*3 <= minUgly {
                ugly3 += 1
            }
            while uglyNums[ugly5]*5 <= minUgly {
                ugly5 += 1
            }
            
            current += 1
        }
        
        return uglyNums[current - 1]
    }
    
    
    func isUgly(_ n: Int) -> Bool {
        if n == 0 {
            return false
        }
        
        var num = n
        
        while num%2 == 0 {
            num /= 2
        }
        
        while num%3 == 0 {
            num /= 3
        }
        
        while num%5 == 0 {
            num /= 5
        }
        
        return num == 1
    }
}
