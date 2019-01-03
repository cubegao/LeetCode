
//
//  122BestTimetoBuyandSellStock2.swift
//  LeetCode
//
//  Created by Gaowz on 2018/12/22.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class MaxProfit2Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        guard prices.count > 0 else {
            return 0
        }
        
        var minPrice = prices[0]
        var maxProfit = 0
        
        for i in 1..<prices.count {
            
            if prices[i] < minPrice {
                minPrice = prices[i]
            }
            
            if prices[i] > minPrice && (i == prices.count - 1 || prices[i+1] < prices[i]) {
                maxProfit += prices[i] - minPrice
                minPrice = prices[i]
            }
        }
        
        return maxProfit
    }
}
