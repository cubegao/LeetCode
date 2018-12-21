//
//  118Pascal'sTriangle.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/21.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation


class GenerateSolution {
    func generate(_ numRows: Int) -> [[Int]] {
        var res = [[1]]
        
        guard numRows > 0  else {
            return []
        }
        
        if numRows == 1 {
            return res
        }
        
        for i in 1..<numRows {

            var last = res.last!
            var left = 0, right = last.count - 1
            var temp = Array<Int>(repeating: 0, count: i+1)
            while left <= right {
                if left == 0 {
                    temp[left] = last[left]
                    temp[i-left] = last[right]

                }else {
                    temp[left] = last[left] + last[left - 1]
                    temp[i-left] = last[right] + last[right + 1]
                }
                
                if left == right - 1 {
                    temp[left+1] = last[left] + last[right]
                }
                
                left += 1
                right -= 1
            }
            
            res.append(temp)
        }
        
        return res
    }
    
    
}
