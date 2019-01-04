//
//  06.重建二叉树.swift
//  LeetCode
//
//  Created by Gaowz on 2019/1/3.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For06Solution {
    
    func rebuildTree1(_ preOrder: [Int], _ inOrder: [Int] ) -> TreeNode? {
        
        var p = preOrder
        var i = inOrder
        return recursive2(&p, &i, 0, i.count-1)
        
        //下面是循环
        var rootValue = preOrder[0]
        var tree = TreeNode(rootValue)
        let res = tree
        var rightTree = tree
        
        
        //左子树长度
        var leftLen = 0
        while inOrder[leftLen] != rootValue {
            leftLen += 1
        }
        
        for (i , n) in preOrder.enumerated() {
            
            var findIndex = 0

            if i == 0 {
                continue
            }else if i <= leftLen {
                findIndex = 0
                
                while findIndex <= leftLen {
                    //从左向右查找，先找到根节点，说明n在右子树上
                    if inOrder[findIndex] == rootValue {
                        tree.right = TreeNode(n)
                        tree = tree.right!
                        rootValue = n
                        break
                    }else if inOrder[findIndex] == n {
                        tree.left = TreeNode(n)
                        tree = tree.left!
                        rootValue = n
                        break
                    }
                    findIndex += 1
                }
            }else {
                findIndex = leftLen + 1
                let rightLen = preOrder.count - 1
                
                if findIndex == i {
                    //右子树的第一个节点
                    rootValue = n
                }
                
                while findIndex <= rightLen {
                    if inOrder[findIndex] == rootValue {
                        rightTree.right = TreeNode(n)
                        rightTree = rightTree.right!
                        rootValue = n
                        break
                    }else if inOrder[findIndex] == n {
                        rightTree.left = TreeNode(n)
                        rightTree = rightTree.left!
                        rootValue = n
                        break
                    }
                    findIndex += 1
                }
            }
        }
        
        return res
    }
    
    //不能改变输入
    func recursive1(_ preOrder: inout [Int],_ startPre: Int,_ endPre: Int, _ inOrder: inout [Int],_ startIn: Int,_ endIn: Int) -> TreeNode? {
        
        if startPre > endPre || startIn > endIn  {
            return nil
        }
        
        let root = TreeNode(preOrder[startPre])
        print(root.val)
        for index in startIn...endIn {
            if inOrder[index] == root.val {
                root.left = recursive1(&preOrder, startPre+1, startPre+(index-startIn), &inOrder, startIn, index-1)
                root.right = recursive1(&preOrder, startPre+(index-startIn)+1, endPre, &inOrder, index+1, endIn)
                break
            }
        }
        return root
    }
    
    //能改变输入,难度-100
    func recursive2(_ preOrder: inout [Int], _ inOrder: inout [Int],_ startIn: Int,_ endIn: Int) -> TreeNode? {
        
        if preOrder.count == 0 || startIn > endIn  {
            return nil
        }
        
        let root = TreeNode(preOrder.removeFirst())
        print(root.val)
        for index in startIn...endIn {
            if inOrder[index] == root.val {
                print("\(startIn)+++\(index)+++\(endIn)")
                root.left = recursive2(&preOrder, &inOrder, startIn, index-1)
                root.right = recursive2(&preOrder, &inOrder, index+1, endIn)
                break
            }
        }
        return root
    }
}
