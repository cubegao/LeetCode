//
//  242ValidAnagram.swift
//  LeetCode
//
//  Created by Gaowz on 2018/12/29.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class IsAnagramSolution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        
        guard s.count == t.count else {
            return false
        }
        
        var anagram = [Character : Int]()
        
        var ss = Array(s), tt = Array(t)
        for i in 0..<ss.count {
            
            if anagram.keys.contains(ss[i]) {
                let value = anagram[ss[i]]! + 1
                anagram.updateValue(value, forKey: ss[i])
            }else {
                anagram.updateValue(1, forKey: ss[i])
            }
            
            if anagram.keys.contains(tt[i]) {
                let value = anagram[tt[i]]! - 1
                anagram.updateValue(value, forKey: tt[i])
            }else {
                anagram.updateValue(-1, forKey: tt[i])
            }
            
        }
        
        let res = Set(anagram.values)
        if res.count > 1 {
            return false
        }
        
        return true
    }
}
