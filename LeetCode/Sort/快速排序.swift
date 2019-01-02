//
//  快速排序.swift
//  Sort
//
//  Created by Gaowz on 2018/12/30.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class QuickSortSolution {
    func sort(_ n: [Int]) -> [Int] {
        var s = n
        quickSort(&s, 0, n.count - 1)
        return s
        
    }
    
    func quickSort(_ n: inout [Int],_ left: Int,_ right: Int) {
        if left < right {
            let mid = partition(&n, left, right)
            quickSort(&n, left, mid - 1)
            quickSort(&n, mid + 1, right)
        }
    }
    
    func partition(_ n: inout [Int],_ left1: Int,_ right1: Int) -> Int {
        let temp = n[left1]
        var left = left1
        var right = right1
        
        
        while left < right {
            while left < right && n[right] >= temp   {
                right -= 1
            }
            n[left] = n[right]
            
            while left < right && n[left] <= temp{
                left += 1
            }
            n[right] = n[left]
        }
        
        n[left] = temp
        
        return left
    }
}
