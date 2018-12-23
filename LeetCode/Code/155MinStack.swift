//
//  155MinStack.swift
//  LeetCode
//
//  Created by Gaowz on 2018/12/23.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation


class MinStack {
    
    var stack: [Int]
    var min: Int
    
    /** initialize your data structure here. */
    init() {
        stack = [Int]()
        min = Int.max
    }
    
    func push(_ x: Int) {
        if x < min || min == Int.max {
            min = x
        }
        stack.append(min)
        stack.append(x)
    }
    
    func pop() {
        stack.removeLast()
        stack.removeLast()
        if stack.count != 0 {
            min = stack[stack.count-2]
        }else {
            min = Int.max
        }
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int {
        return stack[stack.count-2]
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(x)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */


