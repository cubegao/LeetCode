//
//  38.数字在排序数组中出现的次数.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/24.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For38Solution {
    func findNumsOfK(_ nums: [Int],_ k: Int) -> Int {
        
        var n = nums
        let fisrt = getFirstK(&n, k, 0, n.count-1)
        let last = getLastK(&n, k, 0, n.count-1)
        
        if fisrt == -1 || last == -1 {
            //没找到
            return -1
        }
        
        return last - fisrt + 1
        
    }
    
    func getFirstK(_ nums: inout [Int],_ k: Int,_ start1: Int,_ end1: Int) -> Int {
        
        var start = start1
        var end = end1

        if start > end {
            return -1
        }
        
        let mid = (start + end) / 2
        let midNum = nums[mid]
        
        if midNum == k {
            
            if mid == 0 || (mid > 0 && nums[mid - 1] != k) {
                return mid
            }else {
                end = mid - 1
            }
        }else if midNum > k {
            end = mid - 1
        }else {
            start = mid + 1
        }
        
        return getFirstK(&nums, k, start, end)
    }
    
    
    func getLastK(_ nums: inout [Int],_ k: Int,_ start1: Int,_ end1: Int) -> Int {
     
        var start = start1
        var end = end1
        
        if start > end {
            return -1
        }
        
        let mid = (start + end) / 2
        let midNum = nums[mid]
        
        if midNum == k {
            if mid == end || (mid < end && nums[mid+1] != k) {
                return mid
            }else {
                start = mid + 1
            }
        }else if midNum < k {
            start = mid + 1
        }else {
            end = mid - 1
        }
        
        return getLastK(&nums, k, start, end)
        
    }

}
