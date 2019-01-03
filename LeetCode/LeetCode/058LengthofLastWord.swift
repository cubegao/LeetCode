//
//  058LengthofLastWord.swift
//  LeetCode
//
//  Created by Gaowz on 2018/12/16.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//
/*
 给定一个仅包含大小写字母和空格 ' ' 的字符串，返回其最后一个单词的长度。
 
 如果不存在最后一个单词，请返回 0 。
 
 说明：一个单词是指由字母组成，但不包含任何空格的字符串。
 
 示例:
 
 输入: "Hello World"
 输出: 5
 */

import Foundation

class LengthofLastWordSolution {
    func lengthOfLastWord(_ s: String) -> Int {
        
        var isFirstLetter = false
        var sum = 0
        for i in 0..<s.count {
            
            let c = s[s.index(s.endIndex, offsetBy: -i-1)]
            if c == " " {
                if !isFirstLetter {continue}
                return sum
            }
            
            if !isFirstLetter { isFirstLetter = true}
            sum += 1
        }
        return sum
    }
}
