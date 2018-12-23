//
//  main.swift
//  LeetCode
//
//  Created by Ekko on 2018/9/18.
//  Copyright © 2018年 fadaixiaohai. All rights reserved.
//

import Foundation




var res = 0
var minStack = MinStack()
minStack.push(-2)
minStack.push(0)
minStack.push(-3)
minStack.push(-2)
minStack.push(0)
minStack.push(-3)
minStack.push(-2)
minStack.push(0)
minStack.push(-3)
res = minStack.getMin()
minStack.pop()
res = minStack.top()
res = minStack.getMin()
print(res)
