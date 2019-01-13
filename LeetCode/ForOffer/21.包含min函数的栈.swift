//
//  20.包含min函数的栈.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/11.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For21Solution {
    
    var stack: Array<Int>
    var min: Int
    
    init() {
        self.stack = [Int]()
        self.min = Int.max
    }
    
    func push(_ n: Int) {
        if n < min {
            min = n
        }
        self.stack.append(n)
        self.stack.append(min)
    }
    
    func pop() -> Int {
        if self.stack.count == 0 {
            print("stack.count==0")
            return 0
        }
        self.stack.popLast()
        min = self.stack.last!
        return self.stack.popLast()!
    }
    
    func getMin() -> Int {
        if self.stack.count == 0 {
            print("stack.count==0")
            return 0
        }
        return self.stack.last!
    }
    
}
