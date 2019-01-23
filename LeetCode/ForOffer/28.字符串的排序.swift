//
//  28.字符串的排序.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/17.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For28Solution {
    func permutation(_ s: String) {
        
        let temp:[Character] = Array(s)
        full_permutation(arr: temp, begin: 0, end: temp.count)
    }
    
    
    // 去重
    func isSwap(arr: [Character], begin: Int, end: Int) -> Bool {
        var result:Bool = true
        
        for i in begin..<end {
            if arr[i] == arr[end] {
                result = false
                break
            }
        }
        return result
    }
    
    // 字符串特定区间的字符串排列
    func full_permutation(arr: [Character], begin: Int, end: Int) {
        var temp:[Character] = arr
        if begin == end - 1 { // 递归之后输出
            let data:[Character] = Array(arr[0..<end])
            print("排列---\(data)")
        } else {
            for i in begin..<end {
                
                if isSwap(arr: temp, begin: begin, end: i) {
                    temp.swapAt(i, begin) // 字符串交换
                    full_permutation(arr: temp, begin: begin+1, end: end)
                    temp.swapAt(i, begin) // 字符串恢复

                }

            }
        }
    }
}
