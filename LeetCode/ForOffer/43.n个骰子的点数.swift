//
//  43.n个骰子的点数.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/24.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For43Solution {
    func diceProbility(diceCount:Int) {
        var arr:[[Int]] = []
        let maxLen:Int = 6 * diceCount + 1
        let first:[Int] = [Int].init(repeating: 0, count: maxLen)
        let next:[Int] = [Int].init(repeating: 0, count: maxLen)
        arr.append(first)
        arr.append(next)
        var flag:Int = 0
        for i in 1...6 {
            arr[flag][i] = 1
        }
        
        
        for i in 2...diceCount {
            for j in 0..<i {
                arr[1-flag][j] = 0
            }
            for k in i...6 * i {
                var m:Int = 1
                arr[1-flag][k] = 0
                while m <= k && m <= 6 {
                    arr[1-flag][k] += arr[flag][k-m]
                    m += 1
                }
            }
            flag = 1 - flag
        }
        let total:Double = pow(6.0, Double(diceCount))
        for i in diceCount...6 * diceCount {
            let rate:Double = Double(arr[flag][i])/total
            print("FlyElephant--\(i)出现的概率---\(rate)")
        }
    }
}
