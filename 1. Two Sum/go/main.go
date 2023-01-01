package main

import "fmt"

// My solution is O(n^2) in Swift folder.
// This solution is repeated for a ready solution.

func main() {
	fmt.Println(twoSum([]int{2, 7, 11, 15}, 9))
	fmt.Println(twoSum([]int{3, 2, 4}, 6))
	fmt.Println(twoSum([]int{3, 3}, 6))
}

func twoSum(nums []int, target int) []int {
	cache := map[int]int{}
	for i, num := range nums {
		if val, ok := cache[target-num]; ok {
			return []int{val, i}
		}
		cache[num] = i
	}
	return nil
}
