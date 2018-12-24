//
//  171ExcelSheetColumnNumber.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/24.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class TitleToNumberSolution {
    func titleToNumber(_ s: String) -> Int {
        
        var res = 0
        let schar = s.reversed()
        var num = 0
        var index = 0
        
        for r in schar {
            num = Int(pow(Double(26), Double(index)))
            res = res + Int(r.unicodeScalars.first!.value - 65 + 1) * num
            index += 1
        }
        return res
    }
}
