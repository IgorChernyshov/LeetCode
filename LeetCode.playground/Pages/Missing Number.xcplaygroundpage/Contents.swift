import Foundation

func missingNumber(array: [Int]) -> Int {
	var expectedSum = array.count * (array.count + 1) / 2
	var actualSum = array.reduce(0, +)
	return expectedSum - actualSum
}

let array = [3, 0, 1]
missingNumber(array: array) == 2
