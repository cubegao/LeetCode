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
