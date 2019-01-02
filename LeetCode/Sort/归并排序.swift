//
//  归并排序.swift
//  Sort
//
//  Created by Gaowz on 2018/12/31.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class MergeSortSolution {
    func sort(_ n: [Int]) -> [Int] {
        
        var s = n
        sortArray(&s, 0, n.count - 1)
        return s
    }
    
    func sortArray(_ n: inout [Int],_ left: Int,_ right: Int){
        if left < right {
            let mid = (left + right)/2
            sortArray(&n, left, mid)
            sortArray(&n, mid+1, right)
            merge(&n, left, right)
        }
    }
    
    //合并left->mid和mid+1->right
    func merge(_ n: inout [Int],_ leftIn: Int,_ rightIn: Int) {
        var temp = [Int]()
        let mid = (leftIn + rightIn)/2
        var left = leftIn
        var right = mid + 1

        
        while left <= mid && right <= rightIn {
            if n[left] < n[right] {
                temp.append(n[left])
                left += 1
            }else {
                temp.append(n[right])
                right += 1
            }
        }
        
        while left <= mid {
            temp.append(n[left])
            left += 1
        }
        
        while right <= rightIn {
            temp.append(n[right])
            right += 1
        }
        
        var t = 0
        left = leftIn
        while left <= rightIn {
            n[left] = temp[t]
            left += 1
            t += 1
        }
        
    }
}
