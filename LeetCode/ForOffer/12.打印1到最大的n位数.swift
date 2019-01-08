//
//  12.打印1到最大的n位数.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/8.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For12Solution {
    func printMax(_ n: Int) {
        var nums = Array(repeating: "0", count: n)
        while !incrementNumber(&nums) {
            print(printPreString(nums.joined()))
        }
        
    }
    
    func incrementNumber(_ nums: inout [String]) -> Bool {
        
        var isOverFlow = false
        var carry = 0
        var sum = 0
        
        for index in (0..<nums.count).reversed() {
            sum = Int(nums[index])! + carry
            
            if index == nums.count - 1 {
                sum += 1
            }
            
            if sum >= 10 {
                if index == 0 {
                    isOverFlow = true
                }else {
                    sum -= 10
                    carry = 1
                    nums[index] = "0"
                }
            }else {
                nums[index] = String(sum)
                break;
            }
        }
        
        return isOverFlow
    }
    
    func printPreString(_ nums: String) -> String {
        
        var index = 0
        for r in nums {
            if r != "0" {
                break
            }
            index += 1
        }
        
        return String(nums[nums.index(nums.startIndex, offsetBy: index)...])
    }
}
