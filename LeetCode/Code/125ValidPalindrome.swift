//
//  125ValidPalindrome.swift
//  LeetCode
//
//  Created by Gaowz on 2018/12/22.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

//一直超时，用JS写了一份过了！！！
class IsPalindromeSolution {
    func isPalindrome(_ s: String) -> Bool {
        
        guard s.count > 0 else {
            return true
        }
        
        var left = 0
        var right = s.count - 1
        while left < right {
            
            while  !isNumOrABC(s,left) && left < right {
                left += 1
            }
            
            while  !isNumOrABC(s, right) && left < right {
                right -= 1
            }
            
            if getChar(s.lowercased(), left) != getChar(s.lowercased(), right) {
                return false
            }

            left += 1
            right -= 1
            
        }
        
        return true
    }
    
    func isNumOrABC(_ s: String,_ index: Int) -> Bool {
        if getChar(s, index) >= "a" && getChar(s, index) <= "z" {
            return true
        }
        
        if getChar(s, index) >= "0" && getChar(s, index) <= "9"
        {
            return true
        }
        
        return false
    }
    
    func getChar(_ s: String, _ index: Int) -> Character {
        guard s.count >= index+1 else {
            return Character.init(" ")
        }
        
        return s[s.index(s.startIndex, offsetBy: index)]
    }
}
