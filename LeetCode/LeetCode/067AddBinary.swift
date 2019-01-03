//
//  067AddBinary.swift
//  LeetCode
//
//  Created by Gaowz on 2018/12/17.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//
/*
 给定两个二进制字符串，返回他们的和（用二进制表示）。
 
 输入为非空字符串且只包含数字 1 和 0。
 
 示例 1:
 
 输入: a = "11", b = "1"
 输出: "100"
 示例 2:
 
 输入: a = "1010", b = "1011"
 输出: "10101"
 */

import Foundation

class AddBinarySolution {
    func addBinary(_ a: String, _ b: String) -> String {

        var sum = [String]()
        var flag = 0
        var i = a.count - 1, j = b.count - 1
        
        while i >= 0 || j >= 0 {
            
            let ai = i >= 0 ? Int(String(a[a.index(a.startIndex, offsetBy: i)]))! : 0
            let bi = j >= 0 ? Int(String(b[b.index(b.startIndex, offsetBy: j)]))! : 0
            
            let si = ai + bi + flag //存在0，1，2，3
            
            if si < 2 {
                sum.append(String(si))
                flag = 0
            }else if si == 2 {
                sum.append("0")
                flag = 1
            }else {
                sum.append("1")
                flag = 1
            }
            
            i -= 1
            j -= 1
        }
        
        if flag == 1 {
            sum.append("1")
        }
        
        sum.reverse()
        
        return sum.joined(separator: "")

    }
}
