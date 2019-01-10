//
//  20.顺时针打印矩阵.swift
//  LeetCode
//
//  Created by Ekko on 2019/1/10.
//  Copyright © 2019 fadaixiaohai. All rights reserved.
//

import Foundation

class For20Solution {
    func printMatrixClockwisely(_ n: [[Int]]) {
        
        guard n.count > 0 else {
            return
        }
        
        let rows = n.count
        let cols = n[0].count
        
        var start = 0
        
        //每次的起点左上角（start，start）
        while cols > start * 2 && rows > start * 2 {
            printMatrix(n, rows, cols, start)
            start += 1
        }
    }
    
    
    func printMatrix(_ n: [[Int]],_ row: Int,_ col: Int,_ start: Int) {
        
        let endX = col - 1 - start
        let endY = row - 1 - start

        //打印从start->endX,最上一行
        if start <= endX {
            
            var index = start
            while index <= endX {
                print(n[start][index])
                index += 1
            }
        }
        
        
        //打印从start-> endY，最右一列
        if start <= endY {
            var index = start + 1
            while index <= endY {
                print(n[index][endX])
                index += 1
            }
        }

        //打印从endX-> start，最下一行
        if endX >= start {
            var index = endX - 1
            while index >= start {
                print(n[endY][index])
                index -= 1
            }
            
        }

        //打印从endY-> start，最左一列
        if endY >= start {
            var index = endY - 1
            while index > start {
                print(n[index][start])
                index -= 1
            }
        }
        
    }
}
