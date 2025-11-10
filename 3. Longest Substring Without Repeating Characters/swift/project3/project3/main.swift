//
//  main.swift
//  project3
//
//  Created by Alexander Timonenkov on 09.11.2025.
//

import Foundation

func main() {
    let s = "abba"
    let result = lengthOfLongestSubstring(s)
    print(result)
}

func lengthOfLongestSubstring(_ s: String) -> Int {
    if s.isEmpty {
        return 0
    }
    let s = Array(s)
    var left = 0
    var maxLength = 0
    var lastSeen = [Character: Int]()
    for right in (0...s.count - 1) {
        let character = s[right]
        if let prevLeft = lastSeen[character], prevLeft >= left {
            left = prevLeft + 1
        }
        lastSeen[character] = right
        maxLength = max(maxLength, right - left + 1)
    }
    return maxLength
}

main()
