package main

import "fmt"

func main() {
	fmt.Println(minDeletionSize([]string{"cba", "daf", "ghi"}))
	fmt.Println(minDeletionSize([]string{"a", "b"}))
	fmt.Println(minDeletionSize([]string{"zyx", "wvu", "tsr"}))
}

func minDeletionSize(strs []string) int {
	numberOfSymbols := len(strs[0])
	cache := map[int]struct{}{}
	for i := 0; i < len(strs)-1; i++ {
		str1 := strs[i]
		str2 := strs[i+1]
		for j := 0; j < numberOfSymbols; j++ {
			if str1[j] > str2[j] {
				cache[j] = struct{}{}
			}
		}
	}
	return len(cache)
}
