//
//  堆排序.swift
//  Sort
//
//  Created by Gaowz on 2019/1/1.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class HeapSortSolution {
    func sort(_ n: [Int]) -> [Int] {
        
        var s = n
        
        //1.初始化堆
        var i = n.count/2 - 1
        while i >= 0 {
            heapAdjust(&s, i, n.count - 1)
            i -= 1
        }
        
        var j = n.count - 1
        var l = 0
        while j > 0 {
            //交换首尾节点
            let temp = s[j]
            s[j] = s[0]
            s[0] = temp

            //再调整
            heapAdjust(&s, 0, n.count - 1 - l )
            j -= 1
            l += 1
        }
        
        return s
    }
    
    func heapAdjust(_ s: inout [Int],_ local: Int,_ len: Int) {
        
        var loc = local
        var child = 2*loc + 1
        while child < len {
            if child + 1 < len && s[child] < s[child+1] {
                child += 1
            }
            
            if s[loc] < s[child] {
                let temp = s[loc]
                s[loc] = s[child]
                s[child] = temp
                loc = child
                child = 2*loc + 1
            }else {
                break
            }
        }
    }
}
