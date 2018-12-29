//
//  232ImplementQueueusingStacks.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/29.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation


class MyQueue {
    
    var queue : [Int]
    /** Initialize your data structure here. */
    init() {
        self.queue = [Int]()
    }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        self.queue.insert(x, at: 0)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        return self.queue.removeLast()
    }
    
    /** Get the front element. */
    func peek() -> Int {
        return self.queue.last!
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        return self.queue.isEmpty
    }
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */

