//
//  204CountPrimes.swift
//  LeetCode
//
//  Created by Ekko on 2018/12/27.
//  Copyright © 2018 fadaixiaohai. All rights reserved.
//

import Foundation

class CountPrimesSolution {
    func countPrimes(_ n: Int) -> Int {
        
        guard n > 2 else {
            return 0
        }
        
        var primes = Array(repeating: true, count: n)
        
        var r = 2
        while r * r < n {
            if !primes[r] {
                r += 1
                continue
            }
            
            for i in stride(from: r * r, to: n, by: r) {
                primes[i] = false
            }
            
            r += 1
        }
        
        primes[0] = false
        primes[1] = false
        
        var res = 0
        for t in primes where t {
            res += 1
        }
        
        return res;
    }
}
