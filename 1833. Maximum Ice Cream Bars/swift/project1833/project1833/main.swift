//
//  main.swift
//  project1833
//
//  Created by Alexander Timonenkov on 06.01.2023.
//

import Foundation

func maxIceCream(_ costs: [Int], _ coins: Int) -> Int {
    let sorted = costs.sorted()
    var sum = 0
    for i in (0..<sorted.count) {
        sum += sorted[i]
        if sum > coins {
            return i
        }
    }

    if sum <= coins {
        return sorted.count
    }

    return 0
}

print(maxIceCream([1,3,2,4,1], 7))
print(maxIceCream([10,6,8,7,7,8], 5))
print(maxIceCream([1,6,3,1,2,5], 20))
