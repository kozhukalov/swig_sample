package main

// #cgo CXXFLAGS: -std=c++11
// #cgo LDFLAGS: -L. -lmath
// #include "math.h"
import (
	"fmt"

	"fake.tld/demo/math"
)

func main() {
	m := math.NewMath()
	defer math.DeleteMath(m)

	result := m.Add(3, 4)
	fmt.Printf("3 + 4 = %d\n", int(result))
}
