package main

import "fmt"

func main() {
	var mod3, mod5 = "fizz", "buzz"
	for num := 1; num <= 100; num++ {
		var text = ""
		if num%3 == 0 {
			text += mod3
		}
		if num%5 == 0 {
			text += mod5
		}

		if text != "" {
			fmt.Println(text)
		} else {
			fmt.Println(num)
		}
	}
}
