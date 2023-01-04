package main

import "fmt"

func main() {
	fmt.Println(minimumRounds([]int{2, 2, 3, 3, 2, 4, 4, 4, 4, 4}))
	fmt.Println(minimumRounds([]int{2, 3, 3}))
}

func minimumRounds(tasks []int) int {
	cache := map[int]int{}
	for _, task := range tasks {
		count := cache[task]
		cache[task] = count + 1
	}

	numberOfSteps := 0
	for _, count := range cache {
		if count == 1 {
			return -1
		} else if count <= 3 {
			numberOfSteps++
		} else {
			numberOfSteps += (count + 2) / 3
		}
	}
	return numberOfSteps
}
