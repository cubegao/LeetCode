//
//  50.树中两个节点的最低公共祖先.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/31.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

public class MyTreeNode {
    public var val: Int
    public var children: [MyTreeNode]?
    public init(_ val: Int) {
        self.val = val
        self.children = nil
    }
}

class For50Solution {
    func commonTreeNode(_ root: MyTreeNode,_ a: MyTreeNode,_ b: MyTreeNode) -> MyTreeNode? {

        var list1 = [MyTreeNode]()
        var list2 = [MyTreeNode]()
        getNodePath(root, a, &list1)
        getNodePath(root, b, &list2)

        return getLastCommonNode(list1, list2)
    }
    
    func getNodePath(_ root: MyTreeNode?,_ p: MyTreeNode,_ list: inout [MyTreeNode]) {
        
        if root!.val == p.val {
            return
        }
        
        list.append(root!)
        
        let arr = root!.children
        if arr != nil {
            for node in arr! {
                if node.val == p.val {
                    list.append(node)
                    break
                }
                
                getNodePath(node, p, &list)
            }
        }
        
        if list.last?.val != p.val {
            list.removeLast()
        }
    }
    
    func getLastCommonNode(_ p1: [MyTreeNode],_ p2: [MyTreeNode]) -> MyTreeNode? {
        
        var temp: MyTreeNode? = nil
        var index = 1
        
        while index < p1.count {
            if p1[index].val == p2[index].val {
                temp = p1[index]
                break
            }
            index += 1
        }
        
        return temp
    }
}
