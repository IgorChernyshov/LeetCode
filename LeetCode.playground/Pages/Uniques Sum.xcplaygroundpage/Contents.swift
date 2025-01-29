import Foundation

var readCount = 0
let dataSet = ["3", "3 5 4"]
let result = 12

func readLine() -> String? {
	defer { readCount += 1 }
	return dataSet[readCount]
}

_ = Int(readLine()!) ?? 0
let numbers: [Int] = (readLine()!).split(separator: " ").compactMap { Int($0) }

func uniqueSum(numbers: [Int]) -> Int {
	let uniqueNumbers = Set(numbers)
	return uniqueNumbers.reduce(0, +)
}

print(uniqueSum(numbers: numbers))
