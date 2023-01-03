//
//  main.swift
//  project944
//
//  Created by Alexander Timonenkov on 03.01.2023.
//

import Foundation

func minDeletionSize(_ strs: [String]) -> Int {
    var index = strs[0].startIndex
    var numberOfColums = 0

    while index != strs[0].endIndex {
        var prev: Character = "a"
        for s in strs {
            if s[index] < prev {
                numberOfColums += 1
                break
            }
            prev = s[index]
        }

        index = strs[0].index(after: index)
    }

    return numberOfColums
}

print(minDeletionSize(["cba","daf","ghi"]))
print(minDeletionSize(["a","b"]))
print(minDeletionSize(["zyx","wvu","tsr"]))
