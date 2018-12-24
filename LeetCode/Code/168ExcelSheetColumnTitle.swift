//
//  168ExcelSheetColumnTitle.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/24.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class ConvertToTitleSolution {
    func convertToTitle(_ n: Int) -> String {
        
        var num = n
        var chars = [Character]()
        
        while num != 0 {
            num -= 1
            chars.append(Character(UnicodeScalar(num % 26 + 65)!))
            num /= 26

        }
        
        return String(chars.reversed())
    }
        
}
