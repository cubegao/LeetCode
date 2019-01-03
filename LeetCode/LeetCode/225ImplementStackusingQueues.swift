//
//  225ImplementStackusingQueues.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/28.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation


class MyStack {
    
    var stack : [Int]
    
    /** Initialize your data structure here. */
    init() {
        self.stack = [Int]()
    }
    
    /** Push element x onto stack. */
    func push(_ x: Int) {
        self.stack.append(x)
    }
    
    /** Removes the element on top of the stack and returns that element. */
    func pop() -> Int {
        return self.stack.removeLast()
    }
    
    /** Get the top element. */
    func top() -> Int {
        return self.stack.last!
    }
    
    /** Returns whether the stack is empty. */
    func empty() -> Bool {
        return self.stack.count == 0
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Bool = obj.empty()
 */

