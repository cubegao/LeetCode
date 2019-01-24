//
//  41.和为S的两个数字VS和为S的连续正数序列.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/24.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For41Solution {
    func sumIsK(_ nums: [Int],_ k: Int) {
        
        var left = 0
        var right = nums.count - 1
        
        while  left < right {
            
            if nums[right] + nums[left] == k {
                print("\(nums[right])+\(nums[left])=\(k)")
                return
            }else if nums[right] + nums[left] > k {
                right -= 1
            }else {
                left += 1
            }
        }
        
        print("no result!")
    }
    
    
    func sumsIsKSqeuence(_ k: Int) {
        
        if k < 3 {
            return
        }
        
        var small = 1
        var big = 2
        let mid = (1 + k)/2
        var sums = small + big
        
        
        //最少要2个数
        while small < mid {
            
            if sums == k {
                forKPrint(small, big)
            }
            
            while small < mid && sums < k {
                big += 1
                sums += big
                
                if sums == k {
                    forKPrint(small, big)
                }
            }
            
            sums -= small
            small += 1
        }
        
        print("is all!")
        
    }
    
    func forKPrint(_ small: Int,_ big: Int) {
        
        for i in small..<big+1 {
            print(i)
        }
        
        print("once!")

    }
}
