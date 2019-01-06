//
//  08.旋转数组的最小数字.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/5.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For08Solution {
    func findMin(_ n: [Int]) -> Int {
        
        var s = n
        return find(&s, 0, (n.count-1)/2, n.count-1)
        
    }
    
    func find(_ n: inout [Int],_ left: Int,_ mid: Int,_ right: Int) -> Int {
        
        if left == mid {
            return n[right]
        }
        
        if n[left] == n[right] && n[left] == n[mid] {
            return min(n, left, right)
        }
        
        if n[left] > n[mid] {
            return find(&n,left,(left+mid)/2,mid)
        }
        
        if n[mid+1] > n[right] {
            return find(&n,mid+1,(mid+right/2),right)
        }
        
        return n[left] > n[mid+1] ? n[mid+1] : n[left]
    }
    
    
    func min(_ n: [Int],_ left: Int,_ right: Int) -> Int {
        var res = n[left]
        
        var r = left + 1
        
        while r <= right {
            if res > n[r] {
                res = n[r]
            }
            r += 1
        }
        
        return res
    }
}
