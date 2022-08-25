package main

import (
	"fmt"
	"math/big"
	"strings"
)

func main() {
	fmt.Println("27 is power of three:", solution2(27))
	fmt.Println("42 is power of three:", solution2(42))
}

func solution1(n int) bool {
	return strings.ReplaceAll(big.NewInt(int64(n)).Text(3), "0", "") == "1"
}

func solution2(n int) bool {
	for n > 1 {
		if n%3 != 0 {
			return false
		}
		n /= 3
	}

	return n == 1
}

func isPowerOfThree(n int) bool {
	return solution1(n)
}
