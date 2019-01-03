//
//  04.替换空格.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/3.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For04Solution {
    func replace(_ s: String) -> String {
        
        guard s.count > 0 else {
            return s
        }
        
        var nullNum = 0
        for c in s {
            if c == " " {
                nullNum += 1
            }
        }
        
        let len = s.count + nullNum * 2
        var list = Array<Character>(repeating: "x", count: len)
        
        var listIndex = len - 1
        for (_,c) in s.enumerated().reversed() {
            if c == " " {
                list[listIndex] = "0"
                listIndex -= 1
                list[listIndex] = "2"
                listIndex -= 1
                list[listIndex] = "%"
                listIndex -= 1
            }else {
                list[listIndex] = c
                listIndex -= 1
            }
        }
        
        return String(list)
    }
}
