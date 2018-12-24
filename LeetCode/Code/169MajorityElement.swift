//
//  169MajorityElement.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/24.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class MajorityElementSolution {
    func majorityElement(_ nums: [Int]) -> Int {
        
        //摩尔投票 200ms  好吧！性能都很烂
        var target = nums[0]
        var count = 1
        for num in nums {
            if target == num {
                count += 1
            }else {
                count -= 1
                if count == 0 {
                    target = num
                    count = 1
                }
            }
        }
        
        return target
        
        /*
         //用map存储出现的次数 252ms
        var res = [Int : Int]()
        for num in nums {
            
            if res.keys.contains(num){
                res[num] = res[num]! + 1
            }else {
                res[num] = 1
            }
            
            if res[num]! > nums.count/2 {
                return num
            }
            
        }
        
        return 0
 */
        
    }
}
