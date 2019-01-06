//
//  11.数值的整数次方.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/6.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation


/**
 * 1.全面考察指数的正负、底数是否为零等情况。
 * 2.写出指数的二进制表达，例如13表达为二进制1101。
 * 3.举例:10^1101 = 10^0001*10^0100*10^1000。
 * 4.通过&1和>>1来逐位读取1101，为1时将该位代表的乘数累乘到最终结果。
 */

class For11Solution {
    func power(_ b: Double,_ e: Int) -> Double {
        
        var base = b
        var exponent = 0
        
        if e > 0 {
            exponent = e
        }else if e < 0 {
            if base == 0 {
                return 0 //分母不能为0
            }
            exponent = -e
        }else {
            return 1
        }
        
        var res : Double = 1
        
        while exponent != 0 {
            if exponent & 1 == 1 {
                res *= base
            }
            base *= base
            exponent = exponent>>1
        }
        
        
        return e > 0 ? res : 1/res
    }
}
