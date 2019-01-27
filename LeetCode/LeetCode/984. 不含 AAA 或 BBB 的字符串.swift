//
//  984. 不含 AAA 或 BBB 的字符串.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/27.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class StrWithout3a3bSolution {
    func strWithout3a3b(_ A: Int, _ B: Int) -> String {
        if A == 0 && B == 0 {
            return ""
        }
        
        var s = "a"
        var c = "b"
        var bigCount = A
        var smallCount = B
        
        
        
        if B > A {
            s = "b"
            c = "a"
            bigCount = B
            smallCount = A
        }
        
        var strs = [Character]()
        
        let num = A+B
        var index = 0
        
        while index <= num-1{
            
            if bigCount > smallCount {
                if bigCount > 0 {
                    strs.append(Character(s))
                    bigCount -= 1
                    index += 1
                }
            }
            
            if bigCount > 0 {
                strs.append(Character(s))
                bigCount -= 1
                index += 1
            }
            
            if smallCount > 0 {
                strs.append(Character(c))
                smallCount -= 1
                index += 1
            }
        }
        
        return String(strs)
    }
}
