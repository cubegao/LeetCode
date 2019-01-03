


//
//  088MergeSortedArray.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/18.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//
/*
 给定两个有序整数数组 nums1 和 nums2，将 nums2 合并到 nums1 中，使得 num1 成为一个有序数组。
 
 说明:
 
 初始化 nums1 和 nums2 的元素数量分别为 m 和 n。
 你可以假设 nums1 有足够的空间（空间大小大于或等于 m + n）来保存 nums2 中的元素。
 示例:
 
 输入:
 nums1 = [1,2,3,0,0,0], m = 3
 nums2 = [2,5,6],       n = 3
 
 输出: [1,2,2,3,5,6]
 */

import Foundation

class MergeSolution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
        guard nums2.count != 0 else {
            return
        }
        
        guard nums1.count != 0 else {
            nums1 = nums2
            return
        }
        
        //尾插法
        var i = m - 1
        var j = n - 1
        var k = m + n - 1
        while k >= 0  {
            let mi = min(nums1[0], nums2[0]) - 1
            let n1 = i >= 0 ? nums1[i] : mi
            let n2 = j >= 0 ? nums2[j] : mi
            if n2 >= n1 {
                nums1[k] = nums2[j]
                j -= 1
            }else {
                nums1[k] = nums1[i]
                i -= 1
            }
            k -= 1
        }
        
        print(nums1)
        
    }
}
