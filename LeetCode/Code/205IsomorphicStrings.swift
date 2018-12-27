//
//  205IsomorphicStrings.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/27.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class IsIsomorphicSolution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
     
        guard s.count == t.count else {
            return false
        }
        
        var ss = Array(s)
        var tt = Array(t)
        var isomorphic = [Character : Character]()
        
        for i in 0..<ss.count {
            let si = ss[i]
            let ti = tt[i]
            
            if isomorphic.keys.contains(si) {
                if isomorphic[si] != ti {
                    return false
                }
            }else {
                if isomorphic.values.contains(ti) {
                    return false
                }
                isomorphic[si] = ti
            }
            
        }
        
        return true
    }
}
