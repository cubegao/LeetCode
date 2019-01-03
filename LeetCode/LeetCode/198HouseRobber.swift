//
//  198HouseRobber.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/26.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class RobSolution {
    func rob(_ nums: [Int]) -> Int {
        
        /*
         [1,2,3,1]
         
         (last, now)
         (0, 1)
         (1, 2)
         (2, 4)
         (4, 4)
         */
        
        var last = 0 //前一位的前一位的最大和
        var now = 0 //当前位的前一位的最大和
        
        for i in nums {
            
            let temp = now
            //下面的now就是当前的最大和
            now = max(last + i, now)
            //然后窗口走一步
            last = temp;
        }
        return now
    }
}
