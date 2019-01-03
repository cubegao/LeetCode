//
//  202HappyNumber.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/27.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class IsHappySolution {
    func isHappy(_ n: Int) -> Bool {
        
        var temp = [Int]()
        var m = n
        
        while true {
            let l = cycle(&m)
            
            if l == 1 {
                return true
            }
            
            if temp.contains(l) {
                return false
            }
            
            temp.append(l)
            m = l
        }
        
    }
    
    func cycle(_ n: inout Int) -> Int {
        
        var res = 0
        
        while n != 0 {
            let r = n % 10
            res += r * r
            n = n / 10
        }
        
        return res
    }
}
