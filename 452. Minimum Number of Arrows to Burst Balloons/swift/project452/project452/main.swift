//
//  main.swift
//  project452
//
//  Created by Alexander Timonenkov on 05.01.2023.
//

import Foundation

func findMinArrowShots(_ points: [[Int]]) -> Int {
    guard points.count > 1 else { return 1 }

    let sorted = points.sorted { $0[0] < $1[0] }
    var result = 0
    var index = 0

    var lastCheckedPoint = 0
    while index < sorted.count - 1 {
        var endX = sorted[index][1]
        for j in (index+1..<sorted.count) {
            index = j
            if sorted[j][1] < endX {
                endX = sorted[j][1]
            }
            if endX < sorted[j][0] {
                break
            }
            lastCheckedPoint = j
        }
        result += 1
    }
    if lastCheckedPoint < sorted.count - 1 {
        result += 1
    }

    return result
}

print(findMinArrowShots([[1,2]]))
print(findMinArrowShots([[10,16],[2,8],[1,6],[7,12]]))
print(findMinArrowShots([[1,2],[3,4],[5,6],[7,8]]))
print(findMinArrowShots([[1,2],[2,3],[3,4],[4,5]]))
print(findMinArrowShots([[3,9],[7,12],[3,8],[6,8],[9,10],[2,9],[0,9],[3,9],[0,6],[2,8]]))
