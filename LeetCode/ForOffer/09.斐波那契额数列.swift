//
//  09.斐波那契额数列.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/6.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For09Solution {
    func Fibonacci(_ n: Int) -> Int {
        if n <= 0 {
            return 0
        }
        
        if n == 1 {
            return 1
        }
        
        if  n > 1 {
            return Fibonacci(n-1) + Fibonacci(n-2)
        }
        
        return 0
    }
    
    
    func Fibonacci2(_ n: Int) -> Int {
        
        if n == 0 {
            return 0
        }
        
        if n == 1 {
            return 1
        }
        
        var lastlast = 0
        var last = 1
        var res = 0
        for i in 0..<n+1 {
            if i > 1 {
                res = last + lastlast
                lastlast = last
                last = res
            }
        }
        
        return res
    }
}
