//
//  49.把字符串转换成整数.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/31.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For49Solution {
    func myAtoi(_ str: String) -> Int {
        
        guard str.count > 0 else {
            return 0
        }
        
        let arr = Array(str)
        var begin = 0
        let count = str.count - 1
        var sign = 1
        
        if arr[0] == "-" {
            begin += 1
            sign = -1
        }else if arr[0] == "+" {
            begin += 1
        }
        
        var sum = 0
        for i in begin...count {
            
            if arr[i] < "0" || arr[i] > "9" {
                return 0
            }
            
            if sign == 1 && Int.max - sum*10 < Int(String(arr[i]))!*sign {
                return 0
            }
            
            if sign == -1 && Int.min - sum*10 > Int(String(arr[i]))!*sign {
                return 0
            }
            print(Int.min)
            sum = sum * 10 + Int(String(arr[i]))!*sign
        }
        
        return sum

    }
}
