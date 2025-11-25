package main

import (
	"fmt"
	"math"
)

func main() {
	target := 7
	nums := []int{2, 3, 1, 2, 4, 3}
	result := minSubArrayLen(target, nums)
	fmt.Println(result)
}

func minSubArrayLen(target int, nums []int) int {
	if len(nums) == 0 {
		return 0
	}
	result := math.MaxInt
	left := 0
	sum := 0
	for right := 0; right < len(nums); right++ {
		sum += nums[right]
		if sum >= target {
			for {
				result = int(math.Min(float64(result), float64(right-left+1)))
				sum -= nums[left]
				left++
				if sum < target {
					break
				}
			}
		}
	}
	if result == math.MaxInt {
		return 0
	}
	return result
}
