//
//  33.把数组排成最小的数.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/23.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For33Solution {
    func minNum(_ nums: [Int]) -> String {
        
        var s = [String]()
        
        for n in nums {
            s.append("\(n)")
        }
        
        s.sort { (a, b) -> Bool in
            return a + b <  b + a
        }
        
        return s.joined()
        
    }
}
