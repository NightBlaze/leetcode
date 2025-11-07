//
//  main.swift
//  project167
//
//  Created by Alexander Timonenkov on 07.11.2025.
//

import Foundation

func main() {
    let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let target = 5
    let result = twoSum(numbers, target)
    print(result)
}

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var left = 0
    var right = numbers.count - 1
    while left < right {
        let sum = numbers[left] + numbers[right]
        if sum == target {
            return [left + 1, right + 1]
        }
        if sum > target {
            right -= 1
        } else {
            left += 1
        }
    }
    return []
}

main()
