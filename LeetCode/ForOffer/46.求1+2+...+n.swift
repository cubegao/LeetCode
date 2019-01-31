//
//  46.求1+2+...+n.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/31.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For46Solution {
    func addSum(_ num: Int) -> Int {
        
        var res = 0
        num>0 && (res = num + addSum(num - 1)) == ()
        return res
    }
}
