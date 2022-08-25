package main

import (
	"fmt"
	"strings"
)

func main() {
	helpTest("a", "b")
	helpTest("aa", "ab")
	helpTest("aa", "aab")
}

func helpTest(ransomNote string, magazine string) {
	fmt.Printf("canConstruct `%s` from `%s`: %v\n", ransomNote, magazine, canConstruct(ransomNote, magazine))
}

func canConstruct(ransomNote string, magazine string) bool {
	if len(magazine) < len(ransomNote) {
		return false
	}
	for _, m := range magazine {
		index := strings.IndexAny(ransomNote, string(m))
		if index != -1 {
			ransomNote = ransomNote[:index] + ransomNote[index+1:]
			if len(ransomNote) == 0 {
				return true
			}
		}
	}
	return len(ransomNote) == 0
}
