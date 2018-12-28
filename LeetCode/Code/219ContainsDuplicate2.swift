//
//  219ContainsDuplicate2.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/28.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class containsNearbyDuplicateSolution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        
        var set = Set<Int>()

        for i in 0..<nums.count {
            if i > k {
                set.remove(nums[i-k-1])
            }
            
            if !set.insert(nums[i]).inserted {
                return true
            }
        }
        
        return false
        
        
        /*
        var res = [Int : Int]()
        var index = 0
        
        for n in nums {
            
            if res.keys.contains(n) && abs(index - res[n]!) <= k {
                return true
            }else {
                res[n] = index
            }
            index += 1
        }
        
        return false
        */
    }
}
