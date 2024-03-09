import UIKit

let nums = [3, 3]
let target = 6
let output = [0, 1]

var result: [Int] {
	var numsWithIndices = [Int: Int]()
	for (index, element) in nums.enumerated() {
		let secondNumber = target - element
		if let secondNumberIndex = numsWithIndices[secondNumber] { return [index, secondNumberIndex].sorted() }
		numsWithIndices[element] = index
	}
	return [0, 0]
}

print(output == result)
