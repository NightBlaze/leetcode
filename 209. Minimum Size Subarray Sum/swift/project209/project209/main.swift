//
//  main.swift
//  project209
//
//  Created by Alexander Timonenkov on 24.11.2025.
//

import Foundation

func main() {
    let target = 7
    let nums = [2,3,1,2,4,3]
    let result = minSubArrayLen(target, nums)
    print(result)
}

func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    if nums.isEmpty {
        return 0
    }
    if nums.first! >= target {
        return 1
    }
    var result = Int.max
    var currentSum = 0
    var left = 0
    for right in (0..<nums.count) {
        currentSum += nums[right]
        while currentSum >= target {
            result = min(result, right - left + 1)
            currentSum -= nums[left]
            left += 1
        }
    }
    return result == Int.max ? 0 : result
}

main()
