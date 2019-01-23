//
//  29.数组中出现次数超过一半的数字.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/23.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For29Solution {
    func moreThanHalfNum(_ n: [Int]) -> Int {
        
        guard n.count > 0 else {
            print("n为无效数组")
            return -999
        }
        
        var hashMap = [Int : Int]()
        
        for r in n {
            if hashMap.keys.contains(r) {
                hashMap.updateValue(hashMap[r]!+1, forKey: r)
            }else {
                hashMap.updateValue(1, forKey: r)
            }
        }
        
        var key: Int? = nil
        for k in hashMap.keys {
            if hashMap[k]! > n.count/2 {
                key = k
            }
        }
        
        if key == nil {
            print("n为无效数组")
            return -999
        }
        
        return key!
        
    }
}
