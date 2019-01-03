//
//  231PowerofTwo.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/29.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class IsPowerOfTwoSolution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        
        //2的幂  2 10  4 100    10与01=0   100与011=0  (n & n-1) == 0
        return n > 0 && (n & n-1) == 0;

        /*
        guard n > 0 else {
            return false
        }
        
        var num = n
        
        while num != 0 {
            
            if num == 1 || num == 2 {
                return true
            }
            
            if num % 2 != 0 {
                return false
            }
            
            num /= 2
        }
        
        return true
        */
    }
}
