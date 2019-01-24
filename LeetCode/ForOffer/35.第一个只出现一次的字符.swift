//
//  35.第一个只出现一次的字符.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/24.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For35Solution {
    func onlyOneFind(_ s: String) -> Character {
        
        var keySorts = [Character]()
        var hashMap = [Character : Int]()
        
        let strings = Array(s)
        
        for str in strings {
            
            if hashMap.keys.contains(str) {
                hashMap.updateValue(hashMap[str]! + 1, forKey: str)
            }else {
                keySorts.append(str)
                hashMap.updateValue(1, forKey: str)
            }
        }
        
        for str in keySorts {
            
            if hashMap[str] == 1 {
                return str
            }
        }
        
        return Character("")
    }
}
