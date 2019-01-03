//
//  167TwoSum2Inputarrayissorted.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/24.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class TwoSumSolution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        
        var res = [Int : Int]()
        
        for (index , num) in numbers.enumerated() {
            if res.keys.contains(num) {
                return [res[num]!, index]
            }
            
            res[target - num] = index
            
        }
        
        return []

        
        /*
        guard numbers.count > 1 else {
            return []
        }
        
        var left = 0, right = numbers.count-1
        
        if numbers[left] > target {
            return []
        }
        
        while left < right {
            
            if numbers[left] + numbers[right] > target {
                right -= 1
            }else if numbers[left] + numbers[right] < target {
                left += 1
            }else {
                break
            }
            
        }
        
        return [left+1,right+1]
 */
    }
}
