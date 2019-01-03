//
//  217ContainsDuplicate.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/28.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class ContainsDuplicateSolution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        
//        return nums.count != Set.init(nums).count
        
        guard nums.count > 1 else {
            return false
        }
        
        var res = [Int : Bool]()
        
        for n in nums {
            if res.keys.contains(n) {
                return true
            }
            
            res[n] = true
        }
        
        return false
    }
}
