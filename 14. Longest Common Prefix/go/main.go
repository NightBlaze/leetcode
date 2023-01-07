package main

import (
	"fmt"
	"math"
)

func main() {
	fmt.Println(longestCommonPrefix([]string{"flower", "flow", "flight"}))
	fmt.Println(longestCommonPrefix([]string{"dog", "racecar", "car"}))
	fmt.Println(longestCommonPrefix([]string{"", "b"}))
}

func longestCommonPrefix(strs []string) string {
	if len(strs) == 0 {
		return ""
	}
	if len(strs) == 1 {
		return strs[0]
	}

	firstWord := strs[0]
	maxCount := math.MaxInt
	count := 0
	end := len(firstWord)
	for i := 1; i < len(strs); i++ {
		s := strs[i]
		count = 0
		end = int(math.Min(float64(end), float64(len(s))))
		for j := 0; j < end; j++ {
			if firstWord[j] == s[j] {
				count++
			} else {
				break
			}
		}
		maxCount = int(math.Min(float64(maxCount), float64(count)))
	}

	maxCount = int(math.Min(float64(maxCount), float64(end)))

	return firstWord[:maxCount]
}
