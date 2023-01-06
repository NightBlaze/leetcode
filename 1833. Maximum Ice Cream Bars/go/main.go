package main

import (
	"fmt"
	"sort"
)

func main() {
	fmt.Println(maxIceCream([]int{1, 3, 2, 4, 1}, 7))
	fmt.Println(maxIceCream([]int{10, 6, 8, 7, 7, 8}, 5))
	fmt.Println(maxIceCream([]int{1, 6, 3, 1, 2, 5}, 20))
}

func maxIceCream(costs []int, coins int) int {
	sort.Ints(costs)
	sum := 0
	for i, cost := range costs {
		sum += cost
		if sum > coins {
			return i
		}
	}

	if sum <= coins {
		return len(costs)
	}

	return 0
}
