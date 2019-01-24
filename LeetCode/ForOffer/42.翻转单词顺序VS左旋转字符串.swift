//
//  42.翻转单词顺序VS左旋转字符串.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/24.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For42Solution {
    //翻转字符串
    func reverseWord(_ s: String) -> String {
    
        var strs = Array(s)
        
        //第一次整体翻转
        reverse(&strs, 0, s.count-1)
        
        //第二次单个翻转
        var start = 0
        var end = 0
        
        while end < strs.count {
            
            if strs[end] == " " {
                reverse(&strs, start, end-1)
                end += 1
                start = end
            }
            
            end += 1
        }
        
        reverse(&strs, start, end-1)
        
        return String(strs)
    }
    
    //左旋转字符串  abcdefg->cdefgab  从第N个开始
    func leftRotateString(_ s: String,_ n: Int) -> String {
        
        if n > s.count || s == "" {
            return ""
        }
        
        var strs = Array(s)
        
        //翻转前面一段
        reverse(&strs, 0, n-1)
        
        //翻转后面一段
        reverse(&strs, n, strs.count-1)
        
        //全部翻转
        reverse(&strs, 0, strs.count-1)
        
        return String(strs)
    }
    
    func reverse(_ strs: inout [Character],_ start1: Int,_ end1: Int) {
        
        var start = start1
        var end = end1
        
        while start < end {
            
            let temp = strs[start]
            strs[start] = strs[end]
            strs[end] = temp
            start += 1
            end -= 1
        }
        
    }
}
