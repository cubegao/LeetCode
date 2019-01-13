//
//  22.栈的压入、弹出序列.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/13.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For22Solution {
    func isStackPushAndPop(_ pushStack: [Int],_ popStack: [Int]) -> Bool {
        
        //辅助栈，取弹出序列的首位，等于栈顶就弹出。
        var stack = [Int]()
        
        var pushIndex = 0
        var popIndex = 0
        
        while popIndex <= popStack.count - 1 {
            
            let popFirst = popStack[popIndex]
            while stack.last != popFirst {
                
                if pushIndex > pushStack.count - 1 {
                    return false
                }
                
                stack.append(pushStack[pushIndex])
                pushIndex += 1

            }
            
            if stack.last == popFirst {
                stack.popLast()
                popIndex += 1
            }
        }
        
        return true
    }
}
