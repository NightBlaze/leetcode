package main

import "fmt"

func main() {
	result := lengthOfLongestSubstring("abcabcbb")
	fmt.Println(result)
}

func lengthOfLongestSubstring(s string) int {
	if len(s) == 0 {
		return 0
	}
	maxLength := 1
	left := 0
	lastSeen := map[byte]int{}
	for right := 0; right < len(s); right++ {
		character := s[right]
		prevLeft, ok := lastSeen[character]
		if ok && prevLeft >= left {
			left = prevLeft + 1
		}
		lastSeen[character] = right
		maxLength = max(maxLength, right-left+1)
	}
	return maxLength
}
