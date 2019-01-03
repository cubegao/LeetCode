

//
//  066PlusOne.swift
//  LeetCode
//
//  Created by Gaowz on 2018/12/16.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//
/*
 给定一个由整数组成的非空数组所表示的非负整数，在该数的基础上加一。
 
 最高位数字存放在数组的首位， 数组中每个元素只存储一个数字。
 
 你可以假设除了整数 0 之外，这个整数不会以零开头。
 
 示例 1:
 
 输入: [1,2,3]
 输出: [1,2,4]
 解释: 输入数组表示数字 123。
 示例 2:
 
 输入: [4,3,2,1]
 输出: [4,3,2,2]
 解释: 输入数组表示数字 4321。
 */

import Foundation

class PlusOneSolution {
    func plusOne(_ digits: [Int]) -> [Int] {
        
        var rs = [Int]()
        var overTen = false
        for index in 0..<digits.count {
            let i = digits.count - index - 1
            if (index == 0 || overTen ) && digits[i] + 1 == 10 {
                overTen = true
                rs.insert(0, at: 0)
                
                //已经是数组第一个
                if index == digits.count - 1 {
                    rs.insert(1, at: 0)
                }
                
                continue
            }
            
            //数组最后一个+1
            if index == 0 {
                rs.insert(digits[i]+1, at: 0)
            }else {
                //是否有进位
                if overTen{
                    rs.insert(digits[i]+1, at: 0)
                    overTen = false
                }else {
                    rs.insert(digits[i], at: 0)
                }
            }
            
            
        }
        
        return rs
    }
}
