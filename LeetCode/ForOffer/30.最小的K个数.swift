//
//  30.最小的K个数.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/23.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For30Solution {
    func topK(_ n: [Int],_ minK: Int) -> [Int] {
        
        if n.count == 0 || minK == 0 {
            return []
        }
        
        var nums = n
        var start = 0
        var end = n.count - 1
        var index = partition(&nums, start, end)
        while index != minK - 1 {
            if index > minK - 1 {
                end = index - 1
                index = partition(&nums, start, end)
            }
            
            if index < minK - 1 {
                start = index + 1
                index = partition(&nums, start, end)
            }
        }
        
        return Array(nums[0..<minK])
    }
    
    
    //快排partition
    func partition(_ n: inout [Int],_ leftIn: Int,_ rightIn: Int ) -> Int {
        let temp = n[leftIn]
        var left = leftIn
        var right = rightIn
        
        while left < right {
            while left < right && n[right] >= temp {
                right -= 1
            }
            n[left] = n[right]
            
            while left < right && n[left] <= temp {
                left += 1
            }
            n[right] = n[left]
        }
        
        n[left] = temp
        
        return left
    }
}
