//
//  053Maximum Subarray .swift
//  LeetCode
//
//  Created by Ekko on 2018/9/18.
//  Copyright © 2018年 fadaixiaohai. All rights reserved.
//
/*
 给定一个整数数组 nums ，找到一个具有最大和的连续子数组（子数组最少包含一个元素），返回其最大和。
 
 示例:
 
 输入: [-2,1,-3,4,-1,2,1,-5,4],
 输出: 6
 解释: 连续子数组 [4,-1,2,1] 的和最大，为 6。
 */

import Foundation

class MaximumSubarraySolution {
    func maxSubArray(_ nums: [Int]) -> Int {
        
        var current = nums[0]
        var sum = nums[0]
        for i in 1..<nums.count {
            if (current < 0) {
                current = nums[i]
            }else {
                current += nums[i]
            }
            if (current > sum){ sum = current}
        }
        
        return sum
    }
}


