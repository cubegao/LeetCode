//
//  981. 基于时间的键值存储.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/27.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation


class TimeMap {
    
    var map: [String : [Int : String]]
    
    /** Initialize your data structure here. */
    init() {
        self.map = [String : [Int : String]]()
    }
    
    func set(_ key: String, _ value: String, _ timestamp: Int) {
        let timeValue = [timestamp:value]
        self.map.updateValue(timeValue, forKey: key)
    }
    
    func get(_ key: String, _ timestamp: Int) -> String {
        if self.map.keys.contains(key) {
            let obj = self.map[key]
            let times = obj!.keys.sorted()
            var ctime = timestamp
            
            let index = findindex(times, ctime, 0, times.count-1)
            
            if index == -1 {
                return ""
            }
            
            if obj!.keys.contains(times[index]) {
                return obj![times[index]]!
            }
        }
        
        return ""
    }
    
    func findindex(_ nums: [Int],_ n: Int,_ start: Int,_ end: Int) -> Int {
        
        if nums.count == 0 || n < nums[0] {
            return -1
        }
        
        var startnew = start
        var endnew = end
        var mid = ( start + end ) / 2
        
        
        if n == nums[mid] {
            return mid
        }else if n < nums[mid] {
            startnew = mid + 1
        }else {
            endnew = mid - 1
        }
        
        if n > nums[endnew] {
            return endnew
        }
        
        if n < nums[start] {
            return start - 1
        }
        
        return findindex(nums,n,start,end)
    }
}

/**
 * Your TimeMap object will be instantiated and called as such:
 * let obj = TimeMap()
 * obj.set(key, value, timestamp)
 * let ret_2: String = obj.get(key, timestamp)
 */
