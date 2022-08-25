//
//  main.swift
//  project383
//
//  Created by Alexander Timonenkov on 25.08.2022.
//

import Foundation

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    if magazine.count < ransomNote.count {
        return false
    }

    var ransomNote = ransomNote
    for m in magazine {
        if let index = ransomNote.firstIndex(of: m) {
            ransomNote.remove(at: index)
            if ransomNote.isEmpty {
                return true
            }
        }
    }

    return ransomNote.isEmpty
}

func helpTest(_ ransomNote: String, _ magazine: String) {
    print("canConstruct `\(ransomNote)` from `\(magazine)`: \(canConstruct(ransomNote, magazine))")
}

helpTest("a", "b")
helpTest("aa", "ab")
helpTest("aa", "aab")
