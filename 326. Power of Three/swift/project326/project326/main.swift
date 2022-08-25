//
//  main.swift
//  project326
//
//  Created by Alexander Timonenkov on 25.08.2022.
//

import Foundation

func isPowerOfThree(_ n: Int) -> Bool {
    n > 0 && 1162261467 % n == 0;
}

print("27 is power of three: \(isPowerOfThree(27))")
print("42 is power of three: \(isPowerOfThree(42))")
