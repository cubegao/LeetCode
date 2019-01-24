//
//  36.数组中的逆序对.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/24.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For36Solution {
    func inversePairs(_ nums: [Int]) -> Int {
        var n = nums
        return process(&n, 0, n.count - 1)
    }
    
    func process(_ nums: inout [Int],_ start: Int,_ end: Int) -> Int {
        
        if start >= end {
            return 0
        }
        
        var copy = Array(nums)
        let mid = (start + end) / 2
        let left = process(&nums, start, mid)
        let right = process(&nums, mid+1, end)
        
        var p = mid //前半段最后一个
        var q = end //后半段最后一个
        var index = end //辅助数组从最后一位开始
        var count = 0
        
        while p >= start && q >= mid+1 {
            if nums[p] > nums[q] {
                copy[index] = nums[p]
                count += q - mid
                index -= 1
                p -= 1
            }else {
                copy[index] = nums[q]
                index -= 1
                q -= 1
            }
        }
        
        while p >= start {
            copy[index] = nums[p]
            index -= 1
            p -= 1
        }
        
        while q >= mid + 1 {
            copy[index] = nums[q]
            index -= 1
            q -= 1
        }
        
        index = start
        while index <= end {
            nums[index] = copy[index]
            index += 1
        }
        
        
        return left + right + count
    }
}
