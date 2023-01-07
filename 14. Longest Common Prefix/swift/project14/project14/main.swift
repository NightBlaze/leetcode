//
//  main.swift
//  project14
//
//  Created by Alexander Timonenkov on 07.01.2023.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    guard strs.count > 1 else { return strs.first ?? "" }

    var result = strs[0]
    for ch in strs {
        while !ch.hasPrefix(result) {
            result = String(result.dropLast())
        }
    }

    return result
}

print(longestCommonPrefix(["flower","flow","flight"]))
print(longestCommonPrefix(["dog","racecar","car"]))
print(longestCommonPrefix(["","b"]))
