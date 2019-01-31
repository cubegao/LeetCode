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
        
        var arr = [[Int]]()
        let maxCount = 6 * diceCount + 1
        let first = [Int](repeating: 0, count: maxCount)
        let next = [Int](repeating: 0, count: maxCount)
        arr.append(first)
        arr.append(next)
        
        var flag = 0
        
        //一个骰子的情况
        for i in 1...6 {
            arr[flag][i] = 1
        }
        
        //剩下的骰子
        for i in 2...diceCount {
            //清空不存在的点数，2个骰子不存在1
            for j in 0..<i {
                arr[1-flag][j] = 0
            }
            //计算每个存在的点数
            for k in i...6*i {
                var m = 1
                arr[1-flag][k] = 0
                while m <= 6 && m <= k {
                    arr[1-flag][k] += arr[flag][k-m]
                    m += 1
                }
            }
            
            flag = 1 - flag
        }
        
        //打印
        let total :Double = pow(6.0, Double(diceCount))
        var index = 0
        for i in arr[flag] {
            print("点数\(index)出现的概率：\(Double(i)/total)")
            index += 1
        }
        
    }
    
}
