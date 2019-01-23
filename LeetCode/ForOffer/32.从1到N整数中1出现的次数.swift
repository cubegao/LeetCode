//
//  32.从1到N整数中1出现的次数.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/23.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For32Solution {
    func oneNums(_ n: Int) -> Int {
        
        var count = 0
        
        for i in 1..<n+1 {
            
            var index = i
            while index != 0 {
                if index%10 == 1 {
                    count += 1
                }
                index /= 10
            }
        }
        
        return count
    }
    
    //zzzz
    func oneNums2(_ n: Int) -> Int {

        var count = 0
        var i = 1
        
        while i <= n {
            let a = n / i
            let b = n % i
            
            //之所以补8，是因为当百位为0，则a/10==(a+8)/10，
            //当百位>=2，补8会产生进位位，效果等同于(a/10+1)
            count += (a + 8) / 10 * i + ((a % 10 == 1) ? b + 1 : 0);
            
            i *= 10
        }
        
        return count
        
    }
}
