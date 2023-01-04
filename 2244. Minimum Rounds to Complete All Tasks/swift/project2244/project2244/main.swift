//
//  main.swift
//  project2244
//
//  Created by Alexander Timonenkov on 04.01.2023.
//

import Foundation

func minimumRounds(_ tasks: [Int]) -> Int {
    var cache: [Int: Int] = [:]
    tasks.forEach {
        let count = cache[$0] ?? 0
        cache[$0] = count + 1
    }

    var numberOfSteps = 0
    for (_, value) in cache {
        if value == 1 {
            return -1
        } else if value == 2 || value == 3 {
            numberOfSteps += 1
        } else {
            numberOfSteps += (value + 2) / 3
        }
    }

    return numberOfSteps
}

print(minimumRounds([2,2,3,3,2,4,4,4,4,4]))
print(minimumRounds([2,3,3]))
