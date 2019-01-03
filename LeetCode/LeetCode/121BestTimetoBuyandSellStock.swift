//
//  121BestTimetoBuyandSellStock.swift
//  LeetCode
//
//  Created by Gaowz on 2018/12/21.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation


class MaxProfitSolution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var maxProfit = 0

        guard prices.count > 0 else {
            return maxProfit
        }
        
        var buyPrice = prices[0]
        for i in 1..<prices.count {
            
            if prices[i] < buyPrice {
                buyPrice = prices[i]
            }
            
            //记录当前的最小值的最大利润
            if prices[i] - buyPrice > maxProfit {
                maxProfit = prices[i] - buyPrice
            }
        }
        
        return maxProfit
    }
}
