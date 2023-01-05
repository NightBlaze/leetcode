package main

import (
	"fmt"
	"sort"
)

func main() {
	fmt.Println(findMinArrowShots([][]int{{1, 2}}))
	fmt.Println(findMinArrowShots([][]int{{10, 16}, {2, 8}, {1, 6}, {7, 12}}))
	fmt.Println(findMinArrowShots([][]int{{1, 2}, {3, 4}, {5, 6}, {7, 8}}))
	fmt.Println(findMinArrowShots([][]int{{1, 2}, {2, 3}, {3, 4}, {4, 5}}))
	fmt.Println(findMinArrowShots([][]int{{3, 9}, {7, 12}, {3, 8}, {6, 8}, {9, 10}, {2, 9}, {0, 9}, {3, 9}, {0, 6}, {2, 8}}))
}

func findMinArrowShots(points [][]int) int {
	if len(points) == 1 {
		return 1
	}

	sort.Slice(points, func(i, j int) bool {
		return points[i][0] < points[j][0]
	})

	result := 0
	index := 0

	lastCheckedPoint := 0
	for true {
		endX := points[index][1]
		for j := index + 1; j < len(points); j++ {
			index = j
			if points[j][1] < endX {
				endX = points[j][1]
			}
			if endX < points[j][0] {
				break
			}
			lastCheckedPoint = j
		}
		result += 1
		if index >= len(points)-1 {
			break
		}
	}
	if lastCheckedPoint < len(points)-1 {
		result += 1
	}

	return result
}
