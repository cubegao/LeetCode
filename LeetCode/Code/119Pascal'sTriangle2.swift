
//
//  119Pascal'sTriangle2.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/21.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class GetRowSolution {
    func getRow(_ rowIndex: Int) -> [Int] {
        
        var res = Array<Int>(repeating: 1, count: rowIndex+1)
        
        if rowIndex == 0 {
            return res
        }
        
        for i in 1..<rowIndex {
            
            res[i] = res[i-1]*(rowIndex-i+1)/i
        }
        
        return res
    }
}
