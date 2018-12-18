//
//  069Sqrt(x).swift
//  LeetCode
//
//  Created by Ekko on 2018/12/18.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//
/*
 实现 int sqrt(int x) 函数。
 
 计算并返回 x 的平方根，其中 x 是非负整数。
 
 由于返回类型是整数，结果只保留整数的部分，小数部分将被舍去。
 
 示例 1:
 
 输入: 4
 输出: 2
 示例 2:
 
 输入: 8
 输出: 2
 说明: 8 的平方根是 2.82842...,
 由于返回类型是整数，小数部分将被舍去。
 */

import Foundation

class MySqrtSolution {
    func mySqrt(_ x: Int) -> Int {
        
        guard x>1 else {
            return x
        }
        
        //二分查找法  找最接近的数
        var left = 0, right = x
        while left < right {
            let mid = (left + right) / 2
            if x / mid >= mid {
                left = mid + 1
            }else {
                right = mid
            }
        }
        
        return right - 1
        
    }
}
